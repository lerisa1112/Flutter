const express = require('express');
const router = express.Router();
const {
  createProduct,
  getAllProducts,
  getProductById,
  updateProduct,
  deleteProduct
} = require('../controllers/productController');

// Create
router.post('/', createProduct);

// Read All (with filters)
router.get('/', getAllProducts);

// Read by ID
router.get('/:id', getProductById);

// Update
router.put('/:id', updateProduct);

// Delete
router.delete('/:id', deleteProduct);

module.exports = router;
