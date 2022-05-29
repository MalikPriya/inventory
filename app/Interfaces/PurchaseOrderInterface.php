<?php

namespace App\Interfaces;

interface PurchaseOrderInterface
{
    public function listAll();
    public function getSearchPurchaseOrders(string $term);
    public function create(array $data);
    public function update($id, array $data);
    public function delete($id);
}
