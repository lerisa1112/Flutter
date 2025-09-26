const express = require("express");
const router = express.Router();

// OTP Send via Email
router.post("/send", (req, res) => {
  try {
    // Debug: check incoming body
    console.log("👉 req.body:", req.body);

    const { email } = req.body || {}; // safe destructure
    if (!email) {
      return res.status(400).json({ message: "Email is required" });
    }

    // Dummy OTP generate (6 digits)
    const otp = Math.floor(100000 + Math.random() * 900000);

    res.json({
      success: true,
      message: "OTP sent successfully",
      email,
      otp, // Testing purpose
    });
  } catch (error) {
    console.error("OTP Route Error:", error);
    res.status(500).json({ message: "Server Error", error: error.message });
  }
});

module.exports = router;
