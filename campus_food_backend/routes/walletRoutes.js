const express = require('express');
const router = express.Router();
const {
  topUpWallet,
  getBalance,
  getTransactions,
} = require('../controllers/walletController');

router.post('/topup', topUpWallet);
router.get('/balance', getBalance);
router.get('/transactions', getTransactions);

module.exports = router;
