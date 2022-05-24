<?php

namespace App\Interfaces;

interface CartInterface
{
    public function listAll();
    public function listById($userId);
    public function couponCheck($coupon_code);
    public function couponRemove();
    public function addToCart(array $data);
    public function bulkAddCart(array $data);
    public function viewByIp();
    public function viewByUserId();
    public function delete($id);
    public function empty();
    public function qtyUpdate($id,$type);
}
