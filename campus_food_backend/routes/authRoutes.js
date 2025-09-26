const express = require("express");
const { registerUser, loginUser } = require("../controllers/authController");
const { protect } = require("../middleware/authMiddleware");

const router = express.Router();

router.post("/register", registerUser);
router.post("/login", loginUser);

// Example of a protected route
router.get("/me", protect, (req, res) => {
  res.json({ message: "Welcome", user: req.user });
});

module.exports = router;
