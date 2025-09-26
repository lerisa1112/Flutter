
---

## ✨ Overview  
The **BitePay Backend** is built with **Node.js + Express.js** and provides REST APIs for authentication, wallet management, food ordering, and vendor operations.  
It ensures **secure payments**, **real-time order tracking**, and **vendor administration** to make campus dining seamless. 🍕🥤  

---

## 🔥 Features  
✅ **User Authentication** – Secure OTP/Email login with JWT  
✅ **Wallet System** – Add funds, check balance, transaction history  
✅ **Vendor APIs** – Add/manage menus, discounts, availability  
✅ **Order APIs** – Place, update, and track food orders in real time  
✅ **Admin APIs** – Manage users, vendors, and overall analytics  
✅ **Scalable Architecture** – Designed for high traffic campus environments  

---

## 🛠️ Tech Stack  
- **Runtime:** Node.js  
- **Framework:** Express.js  
- **Database:** MongoDB + Mongoose ODM  
- **Authentication:** JWT & OTP (via Nodemailer/Twilio)  
- **Cloud & Deployment:** (Heroku / Render / AWS / Vercel – your choice)  

---

## 🚀 Installation  

```bash
# Clone the repository
git clone https://github.com/your-username/campus-food-backend.git

# Go inside the folder
cd campus-food-backend

# Install dependencies
npm install

# Add environment variables
cp .env.example .env

# Start development server
npm run dev
