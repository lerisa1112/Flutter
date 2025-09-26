const mongoose = require('mongoose');

const ProductSchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  description: {
    type: String,
    default: "",
  },
  price: {
    type: Number,
    required: true,
  },
  foodType: {
    type: String,    // e.g. "veg", "nonveg", "fast food" etc
    required: true,
  },
  imageUrl: {
    type: String,    // optional — URL of image
    default: ""
  },
  available: {
    type: Boolean,   // if product currently available
    default: true
  },
  createdAt: {
    type: Date,
    default: Date.now
  }
});

module.exports = mongoose.model('Product', ProductSchema);
