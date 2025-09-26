const express = require('express');
const router = express.Router();
const {
  placeOrder,
  getOrderById,
  getOrdersByUser,
  getAllOrders
} = require('../controllers/orderController');

// POST to place a new order
router.post('/place', placeOrder);

// GET order by id
router.get('/:id', getOrderById);

// GET orders of a specific user
router.get('/user/:userId', getOrdersByUser);

// GET all orders (for admin)
router.get('/', getAllOrders);

module.exports = router;
