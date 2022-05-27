<?php

namespace App\Interfaces;

interface PurchaseorderInterface
{
    public function listAll();
    public function getSearchProducts(string $term);
    public function relatedProducts($id);
    public function create(array $data);
    public function update($id, array $data);
    public function delete($id);
}
