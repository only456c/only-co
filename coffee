echo "# only-co" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/only456c/only-co.git
git push -u origin main
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Only Coffee Creative - Order Now</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        header {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
        }
        .menu {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .menu-item {
            text-align: center;
        }
        .menu-item h3 {
            margin: 0;
            font-size: 1.2em;
        }
        .order-form {
            display: flex;
            flex-direction: column;
        }
        label, input {
            margin-bottom: 10px;
        }
        input[type="number"] {
            width: 60px;
        }
        .submit-btn {
            background-color: #333;
            color: white;
            padding: 10px;
            border: none;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #555;
        }
        footer {
            text-align: center;
            margin-top: 20px;
            font-size: 0.8em;
        }
    </style>
</head>
<body>

<header>
    <h1>Only Coffee Creative</h1>
    <p>Order the finest coffee delivered to your door!</p>
</header>

<div class="container">
    <h2>Menu</h2>
    <div class="menu">
        <div class="menu-item">
            <h3>Black Coffee</h3>
            <p>₹50</p>
        </div>
        <div class="menu-item">
            <h3>Desi Twist</h3>
            <p>₹50</p>
        </div>
        <div class="menu-item">
            <h3>South Indian</h3>
            <p>₹50</p>
        </div>
        <div class="menu-item">
            <h3>Day Coffee</h3>
            <p>₹50</p>
        </div>
    </div>

    <h2>Order Now</h2>
    <form class="order-form">
        <label for="coffee-type">Select Coffee:</label>
        <select id="coffee-type" name="coffee-type">
            <option value="Black Coffee">Black Coffee - ₹50</option>
            <option value="Desi Twist">Desi Twist - ₹50</option>
            <option value="South Indian">South Indian - ₹50</option>
            <option value="Day Coffee">Day Coffee - ₹50</option>
        </select>

        <label for="quantity">Quantity:</label>
        <input type="number" id="quantity" name="quantity" value="1" min="1">

        <label for="name">Your Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="contact">Contact Number:</label>
        <input type="text" id="contact" name="contact" required>

        <label for="address">Delivery Address:</label>
        <input type="text" id="address" name="address" required>

        <p><strong>Total: ₹<span id="total-price">60</span> (₹50 + ₹10 delivery)</strong></p>

        <p>Pay via UPI to <strong>8726866058@apl</strong></p>

        <button type="submit" class="submit-btn">Place Order</button>
    </form>
</div>

<footer>
    <p>Only Coffee Creative &copy; 2024</p>
</footer>

<script>
    const coffeeType = document.getElementById('coffee-type');
    const quantity = document.getElementById('quantity');
    const totalPrice = document.getElementById('total-price');

    function calculateTotal() {
        const coffeePrice = 50;
        const deliveryCharge = 10;
        const total = (coffeePrice * quantity.value) + deliveryCharge;
        totalPrice.innerText = total;
    }

    quantity.addEventListener('input', calculateTotal);
    coffeeType.addEventListener('change', calculateTotal);
</script>

</body>
</html>
