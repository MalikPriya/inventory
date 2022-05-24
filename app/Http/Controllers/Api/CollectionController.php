<?php

namespace App\Http\Controllers\Api;

use App\Interfaces\CollectionInterface;
use App\Models\Collection;
use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;


class CollectionController extends Controller
{
    // private CollectionInterface $collectionRepository;

    public function __construct(CollectionInterface $collectionRepository)
    {
        $this->collectionRepository = $collectionRepository;
    }

     /**
     * This method is for show collection list
     * @return \Illuminate\Http\JsonResponse
     */
    public function list(Request $request): JsonResponse
    {

        $collection = $this->collectionRepository->getAllCollections();

        return response()->json(['error'=>false, 'resp'=>'Collection data fetched successfully','data'=>$collection]);
    }
    /**
     * This method is for create collection
     * @return \Illuminate\Http\JsonResponse
     */
    public function store(Request $request): JsonResponse
    {
        $collectionDetails = $request->only([
            'name', 'description', 'image_path', 'slug'
        ]);

        return response()->json(
            [
                'data' => $this->collectionRepository->createCollection($collectionDetails)
            ],
            Response::HTTP_CREATED
        );
    }
    /**
     * This method is for show collection details
     * @param  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function show(Request $request): JsonResponse
    {
        $collectionId = $request->route('id');

       
        $collection = $this->collectionRepository->getCollectionById($collectionId);

        return response()->json(['error'=>false, 'resp'=>'Collection data fetched successfully','data'=>$collection]);
    }
    /**
     * This method is for collection update
     * @param  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function update(Request $request): JsonResponse
    {
        $collectionId = $request->route('id');
        $newDetails = $request->only([
            'name', 'description', 'image_path', 'slug'
        ]);

        return response()->json([
            'data' => $this->collectionRepository->updateCollection($collectionId, $newDetails)
        ]);
    }
    /**
     * This method is for collection delete
     * @param  $id
     * @return \Illuminate\Http\JsonResponse
     */
    public function delete(Request $request): JsonResponse
    {
        $collectionId = $request->route('id');
        $this->collectionRepository->deleteCollection($collectionId);

        return response()->json(null, Response::HTTP_NO_CONTENT);
    }
}
