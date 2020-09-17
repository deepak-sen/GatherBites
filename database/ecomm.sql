-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 29, 2019 at 06:57 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `type` int(10) NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `type`, `status`) VALUES
(22, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(9, 9, 19, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Butcher', 'Butcher'),
(3, 'Fishmonger', 'Fishmonger'),
(4, 'Delicatessen', 'Delicatessen'),
(5, 'Greengrocer', 'Greengrocer'),
(7, 'Bakery', 'Bakery');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5),
(21, 11, 19, 1),
(22, 12, 13, 1),
(23, 13, 7, 1),
(24, 14, 13, 19),
(25, 15, 19, 1),
(26, 16, 11, 1),
(27, 17, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Frozen Chicken', '<p>We are amongst the highly reliable organization which import and export supreme quality range of Frozen Chicken. We provide different cuts and portions of frozen chicken which are very nutritious and rich in protein. Our frozen chickens are processed from naturally grown chickens in the country. These chickens are hygienically processed and cuts into different portions. Our frozen chickens are carefully packed and are ready for cooking. We are offering these frozen chickens to our clients at economical prices.</p>\r\n\r\n<p><strong>Features:</strong></p>\r\n\r\n<ul>\r\n	<li>Excellent quality</li>\r\n	<li>Very delicious</li>\r\n	<li>Ready to use</li>\r\n	<li>Economical</li>\r\n</ul>\r\n', 'frozen-chicken', 399, 'dell-inspiron-15-7000-15-6_1558287520.jpg', '2019-05-29', 2),
(2, 3, 'Fresh Fish Meat, for Household', '<p>To furnish the varied necessities of our customers in best possible way, we are involved in presenting&nbsp;<strong>Fresh Fish Meat.&nbsp;</strong>Apart from this, customers can avail this product from us at reasonable rates.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'fresh-fish-meat-household', 40, 'microsoft-surface-pro-4-typecover-128-gb_1558263650.jpg', '2019-05-27', 2),
(3, 3, 'Surmai/Seer Fish Fillet Boneless â€“ Net Wt. 500 Grams', '<ul>\r\n	<li>Premium surmai fish boneless. It&rsquo;s also known as king fish and seer fish.</li>\r\n	<li>Available for pre-order deliveries</li>\r\n</ul>\r\n', 'surmai-seer-fish-fillet-boneless-net-wt-500-grams', 199, 'dell-inspiron-15-5000-15-6_1558287886.jpg', '2019-05-29', 1),
(4, 1, 'Leo Gourmet Turkey - Whole, 3.5 kg', '<p>Any feast is incomplete without a whole turkey as the star of the show. Turkey is a popular poultry product prepared for culturally significant events such as Thanksgiving, Christmas, New Year, and so on. There are plenty of techniques for cooking a whole turkey, which includes, frying, roasting upside down and turning halfway, or by simply baking it with stuffings and sauces of your choice.</p>\r\n', 'leo-gourmet-turkey-whole-3-5-kg', 399, 'leo-gourmet-turkey-whole-3-5-kg_1559117655.jpg', '2019-05-29', 2),
(5, 3, 'Indian Salmon Fish', '<p><strong>Indian Salmon</strong>.popularly known as&nbsp;<strong>Rawas</strong>&nbsp;threadfin&nbsp;<strong>fish</strong>&nbsp;in India, mostly occurs in shallow muddy bottoms and coastal waters of Gujarat and Maharashtra.</p>\r\n\r\n<p>Fresh Salmon Fish / Rawas Washed &amp; Packed As Whole.</p>\r\n\r\n<p>The Weight Of This Fish Very Between 900 Grams To 1500 Grams</p>\r\n', 'indian-salmon-fish', 339, 'apple-9-7-ipad-32-gb-gold_1558330865.jpg', '2019-05-29', 1),
(6, 1, 'Rabbit Meat', '<p>Considered the most tender part of the Rabbit, the Boneless Rabbit Loins are, also, the most versatile. Seared, roasted, fried, braised or sous vide makes for the perfect meal. Both low in fat and calories, Rabbit Boneless Loins are the perfect replacement for chicken or turkey dishes. Make it less healthy, but even more delicious, by wrapping the Boneless Rabbit Loin in Berkshire Bacon and roasting.</p>\r\n', 'rabbit-meat', 449.99, 'dell-inspiron-15-5000-15_1558335113.jpg', '2019-05-29', 4),
(7, 3, 'Fresh Pound Trout', '<p>The rainbow trout is a trout and species of salmonid native to cold-water tributaries of the Pacific Ocean in Asia and North America</p>\r\n\r\n<p>Fresh Rainbow Trout Fish Washed &amp; Packed As Whole.</p>\r\n', 'fresh-pound-trout', 119, 'duck-meat-whole-skin-weight-950-grams_1558330925.jpg', '2019-05-19', 3),
(8, 1, 'Wild Boar Ribs Large', '<p>Our Texas caught Wild Boar St. Louis style Ribs are wild. Tracked and trapped on private ranches in Western Texas, makes for a conversation piece at any gathering. Smoked, grilled or roasted in the oven, low and slow, for a few hours will produce a tender and juicy meal.</p>\r\n', 'wild-boar-ribs-large', 49.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver_1558335106.jpg', '2019-05-29', 2),
(9, 7, 'Cookies - Honey Oatmeal, 75 g Pouch', '<p>Enjoy the bites on the very yummy and crunchy Unibic Anzac Oatmeal Cookies enriched with the real goodness of Oats with Golden Syrup. Unibic Anzac Oatmeal Cookies are made up of using the ingredients like rolled oats, flour, desiccated coconut, sugar, butter and baking soda. With its delectable and healthy bites, sweeten up your moment filled with yumminess and happiness.</p>\r\n', 'cookies-honey-oatmeal-75-g-pouch', 1.99, 'cookies-honey-oatmeal-75-g-pouch_1559119895.jpg', '0000-00-00', 0),
(11, 2, 'Osmania Biscuits', '<p>Osmania Biscuits are the speciality of Subhan Bakery and they are famous for it across the nation. Kids and adults like enjoy this delicious biscuit and it is common to serve these to guests at home. Named after His excellency Mir Osman Ali Khan, the last Nizam of Hyderabad, this unique taste of this biscuit is much loved by all.</p>\r\n', 'osmania-biscuits', 22.39, 'hp-barebones-omen-x-900-099nn-gaming-pc_1558287652.jpg', '2019-05-20', 2),
(12, 5, 'Asparagus', '<p>The uniquely mild and bitter flavoured Asparagus has long, deep green stalks that are tender at the tip and thick at the end.</p>\r\n\r\n<p>Wrap them in paper towels or a plastic bag and refrigerate. We deliver these leafy in hygienic packages which can be directly stored in your refrigerator. While consuming, cut off the woody part of the stem and use the remaining.&nbsp;<br />\r\nAsparagus can be eaten raw, fried or roasted. They are even added to salads, pastas, scrambled eggs, etc.&nbsp;</p>\r\n\r\n<p>Asparagus is fiber rich and a natural diuretic. They help in weight loss and the strengthening of our immune system.&nbsp;<br />\r\nThey ease hangovers and protect liver cells from the toxins present in alcohol.</p>\r\n', 'asparagus', 9.99, 'asparagus_1559118510.jpg', '2018-05-12', 3),
(13, 5, 'Homegrown spinach', '<p>With succulent, spoon shaped green leaves, Palak/Spinach is sweet, nutty and sometimes tangy. Fresho delivers to your doorstep freshly chopped spinach , making your preparations much easier and quicker because we value your time!&nbsp;</p>\r\n\r\n<p>We deliver palak leaves in the best hygienic packages which can be directly stored in the refrigerator. They keep well for upto 4 days.&nbsp;<br />\r\nPalaks can be eaten raw or cooked. Cooked palaks help in absorption of essential minerals in the body. They can be boiled and added to salads, pastas, soups or fried and used in dal and curries.&nbsp;</p>\r\n', 'homegrown-spinach', 9.99, 'hp-pavilion-power-580-015na-gaming-pc_1558263575.jpg', '2019-05-29', 4),
(14, 4, 'Amatrice Giunco Amatriciano Cheese, 3 lb', '<p>Giunco Amatriciano is made of Italian pasteurized&nbsp;sheep milk processed within 24&nbsp;hours of milking. The cheese was processed by following an old fashion shepherd tradition where it has a golden grooved rind while aging in a basket.</p>\r\n\r\n<p>It&rsquo;s flavor accentuates with light&nbsp;sparkling white wine or a soft&nbsp;rose.&nbsp;Semi-hard paste, slightly glazed, straw-yellow color and refined perfume.</p>\r\n\r\n<p><strong>Size:</strong>&nbsp;3 lb</p>\r\n\r\n<p><strong>Ingredients:</strong>&nbsp;MILK pasteurized sheep, rennet, salt, lactic ferments</p>\r\n\r\n<p><strong>Origin:</strong>&nbsp;Rome, Italy</p>\r\n', 'amatrice-giunco-amatriciano-cheese-3-lb', 99.99, 'amatrice-giunco-amatriciano-cheese-3-lb_1559119141.jpg', '2019-05-29', 1),
(15, 7, 'Black Forest Cake', '<p>Black Forest is one of the most-sought-after cakes in today world. It is not just a cake, but a way to express ones care, emotions, feelings and love to the most important people in our lives.</p>\r\n\r\n<p>Known to be rich in ingredients, this typical round Black Forest cake consist a fresh mushy red or chocolate sponge at the base smothered with majestic layers of fresh whipped cream and cherries. The decoration also involves bountiful of chocolate curls and fleck of whipped cream which is topped with stunning red cherries on it!</p>\r\n\r\n<p>You may send this cake as a gift for any sort of occasion or event! And if your loved one is angry or upset you are just a click away to buy this wonderful cake and make him/her special!</p>\r\n', 'black-forest-cake', 4.99, 'black-forest-cake_1559120027.png', '2018-07-09', 1),
(16, 7, 'Apple Pie Wholewheat Eggless, 50 g', '<p>A unique delicious apple pie from BHealthy. The best Japanese apples are handpicked for this recipe of apple pie cake. If apples are not available as per season we use high-quality green apples that are tasty and juicy. Enjoy this healthy pie and share it with your family and friends.</p>\r\n\r\n<p>Ingredients</p>\r\n\r\n<p>Whole Wheat Flour, Oats, Butter, Milk Product, Apple, Cinnamon Power, Dry Fruits.</p>\r\n', 'apple-pie-wholewheat-eggless-50-g', 49.99, 'apple-pie-wholewheat-eggless-50-g_1559119536.jpg', '2019-05-29', 2),
(17, 3, 'Fish fillet', '<p>Fresho Meats is our in house brand of fresh meat, poultry and seafood. We take utmost care in selecting the best suppliers to provide you with high quality and succulent products. Every product is stored in our cold storage right until your doorstep ensuring freshness and utmost hygiene. Additionally, every product is packed using food grade plastic which provides a nourishing and wholesome environment. Cleaned with bones retained</p>\r\n', 'fish-fillet', 9.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black_1558331134.jpg', '2018-05-12', 1),
(18, 3, 'Surmai fish cleaned and cut', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'surmai-fish-cleaned-and-cut', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black_1558331059.png', '2018-05-12', 2),
(19, 7, 'Baguette - L\'Exclusif - 275 g', '<p>The lengthy / elongated french bread comes with a very crisp crust. Considered to be the staple food of the French, this is a fast consuming bread. Have as your regular breakfast using jams, butters, marmalades. If you are an English /European breakfast fan, this is your perfect friend. Serve these baguettes with brie or camembert cheese for a simple yet decadent lunch or dinner. If you like your sandwich with a little sizzle, try this sensational baguette with a garlic or chili spread&nbsp;</p>\r\n', 'baguette-l-exclusif-275-g', 2.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black_1558263619.jpg', '2019-05-27', 5),
(20, 5, 'Fresho Broccoli, 500 g', '<p>With a shape resembling that of a cauliflower, Brocollis have clusters of small, tight flower heads. These heads turn bright green on cooking and tastes slightly bitter.&nbsp;</p>\r\n\r\n<p>Storage and Uses</p>\r\n\r\n<p>Consume fresh broccoli as soon as you can as it will not keep for long. To store, drizzle water droplets on the flower heads, cover loosely in damp paper towels and refrigerate. But never wash broccoli before storing in the refrigerator. The excess moisture promotes mold. Do not store broccoli in a sealed container or plastic bag. Raw broccolis requires air circulation.&nbsp;<br />\r\nBrocollis serve as a healthy raw vegetable. Add them to your salads, pasta, curries and rice. Steam broccoli stalks, add some salt and oil and roast it for a crunchy flavour.&nbsp;</p>\r\n', 'fresho-broccoli-500-g', 39, 'fresho-broccoli-500-g_1559119676.jpg', '2019-05-29', 1),
(27, 1, 'Ham - Pork, 300 g', '<p>Quickee presents their deliciously mouth-watering range of meat products which will enchant your taste buds and leave you craving for more as you rake up your favourite meals. Use Quickees Pork Ham to make your favourite sandwiches and subs with fresh vegetables in order to rake up a delectable meal for your family and friends.</p>\r\n\r\n<p>Pork Meat (64%), Water (26%), Starch, Isolated Soya Protein, Iodized Salt, Sugar, Spices and Condiments, Phosphates (INS-450, 451 &amp; 452), Antioxidant (INS-316 &amp; 300), Curing Salt (INS-250).&nbsp;</p>\r\n\r\n<h3>Allergen</h3>\r\n\r\n<p>1) CONTAINS SOYA</p>\r\n', 'ham-pork-300-g', 19, 'cheese_1559117718.jpg', '2019-05-29', 2),
(28, 4, 'Double Cream Cheese - 9 lb', '<p>Due to Holland&rsquo;s fertile soil and lush green pastures, our cows produce unusually rich milk. Additional cream is then added to the milk for an extra rich cheese we call Double Cream. Double Cream has a mild flavor. It&rsquo;s sliceable, melts beautifully, ideal is for making creamy cheese sauces. It also makes delicious omelets, tortillas and potatoes. Melt some on a hot piece of apple pie for a special dessert!</p>\r\n\r\n<p><strong>Type of Cheese:</strong><br />\r\nGouda</p>\r\n\r\n<p><strong>Ingredients:</strong><br />\r\nPasteurized milk, salt, cheese culture, vegetarian rennet, annatto color.</p>\r\n\r\n<p><strong>Size:</strong><br />\r\n8 oz</p>\r\n\r\n<p><strong>Origin:</strong><br />\r\nProduct of&nbsp;Holland</p>\r\n', 'double-cream-cheese-9-lb', 29, 'double-cream-cheese-9-lb_1559119305.jpg', '2019-05-29', 1),
(29, 4, 'Fresh Cheese Gourmet Sampler Box - 5 Cheeses (6 pieces total)', '<p><strong>1. (1 ball ) FRESH MOZZARELLA wrap (FIOR DI LATTE Neapolitan style)&nbsp;<strong>10 OZ&nbsp;</strong></strong></p>\r\n\r\n<p>This is a soft fresh cheese made with only four ingredients: fresh cow milk,&nbsp;vegetable rennet , italian starter culture and salt. the fior di latte is perfect for caprese,&nbsp;pizza, pasta, lasagna, sandwiches and more</p>\r\n\r\n<p><strong>2. (1)CACIOCAVALLO&nbsp;( SCAMORZA) - 9&nbsp; oz</strong></p>\r\n\r\n<p>The&nbsp;cheese have a round shape, and then tie a string around the head and hang to dry.&nbsp;The resulting shape is pear-like.<br />\r\nIngredients: fresh cow milk,vegetable rennet , italian starter culture and salt</p>\r\n\r\n<p>3<strong>.&nbsp; (1) PRIMO SALE (BASKET CHEESE) 10 oz</strong></p>\r\n\r\n<p>Basket is a cheese made from cow&#39;s milk available fresh, gets its name from the way it is formed (inside a basket).</p>\r\n\r\n<p><strong>4. (<strong>2 balls)</strong>&nbsp;Handmade -BURRATA&nbsp; of 4oz each .</strong></p>\r\n\r\n<p>Made with Italian cream, imported from Italy</p>\r\n\r\n<p>5<strong>. (1) RICOTTA AND PANNA&nbsp;<strong>1.1 LB&nbsp;</strong></strong></p>\r\n\r\n<p>Ingredients :imported italian panna , whole milk and salt.</p>\r\n\r\n<ul>\r\n</ul>\r\n', 'fresh-cheese-gourmet-sampler-box-5-cheeses-6-pieces-total', 289.99, 'fresh-cheese-gourmet-sampler-box-5-cheeses-6-pieces-total_1559122003.jpg', '2018-07-09', 3),
(30, 3, 'Norway Salmon Fish', '<p><strong>Norway Salmon Fish</strong>&nbsp;maintains a low scale on fats and calories thus help our body from aging by reducing any such symptoms. It also helps in reducing Heart Problems and control blood pressure as Norway Salmon is a reliable source of&nbsp;omega-3 fatty acids. Boost our&nbsp;immune system&nbsp;as it doesn&rsquo;t contain much&nbsp;fat. Norway Salmon is also a lean source of protein, with only 12 grams of fat per serving.</p>\r\n\r\n<p>Meat My Treat guarantee you the highest quality of fish that caught everyday. At Meat My Treat we use latest technology to preserve the natural texture and taste of the fish. We caught &amp; sell the fish at the same day. All our seafood scaled and cleaned in RO-Water. We also use temperature control technology so that the Fish will remain chilled until delivered to your doorstep.</p>\r\n\r\n<p>We hygienically vacuum-packed&nbsp;<strong>Norway Salmon Fish Fillet</strong>&nbsp;and do not preserve fish with chemicals.</p>\r\n', 'norway-salmon-fish', 88.99, 'norway-salmon-fish_1559120091.png', '2019-05-29', 1),
(32, 1, 'Duck Meat Whole (With Skin) â€“ Weight 950 Grams', '<p>This&nbsp;Duck&nbsp;is one of its kind culinary experiences. This charmingly misnamed delicacy is actually a fish. It is a pure dried fish, which is a completely natural product that retains the antioxidant and omega-3 benefits of fresh fish. Drying fish is a way of preserving it at a time of plenty. Dried fish provides an excellent source of protein with fewer calories than other foods. After sun drying it is the highest quality fish straight from the source to your kitchen in the most hygienic way. It is free from chemicals.</p>\r\n\r\n<p>Ingredients</p>\r\n\r\n<p>Delicious Dry Fish Bombay Duck Slices</p>\r\n', 'duck-meat-whole-skin-weight-950-grams', 72.88, 'duck-meat-whole-skin-weight-950-grams.jpg', '2019-05-29', 1),
(33, 5, 'Fresho Beans - Haricot, 1 kg', '<p>Haricot beans are small, oval, plump and creamy-white with a mild flavour and a smooth, buttery texture.</p>\r\n\r\n<p>Storage and Uses</p>\r\n\r\n<p>Store unwashed fresh beans in a perforated plastic bag and refrigerate. Whole beans stored this way will stay for a week.&nbsp;<br />\r\nConsuming Haricot beans raw is not possible as it has a very hard exterior, however, cooking it makes it edible and tasty. It has little flavour of its own but is capable of absorbing the aroma and flavours of added spices very easily. It is because of this reason that these beans are used in bean salads, vegetable soups, slow cooked dishes and other dishes, making it very popular in the market. Also used in many dishes with tomato sauce.</p>\r\n', 'fresho-beans-haricot-1-kg', 13.88, 'fresho-beans-haricot-1-kg_1559120539.jpg', '0000-00-00', 0),
(34, 5, 'Cabagge', '<p>With a texture of crispness and juiciness the moment you take the first bite, cabbages are sweet and grassy flavoured with dense and smooth leafy layers.&nbsp;</p>\r\n\r\n<p>Do not cut cabbages unless you are immediately consuming as it begins to lose vitamin C when cut. If you absolutely cannot immediately finish the remaining cabbage, wrap it tightly in plastic wrap and store it in the refrigerator for up to two days. Keeping them in the refrigerator retains the crispiness of the vegetable.&nbsp;<br />\r\nShredded cabbage can be directly added to any salad and sandwiches as they are most nutritious when eaten raw. Also used in pickles and flat breads.&nbsp;<br />\r\nStew fried cabbage, onion, garlic, bell pepper and green chilies mixed with steamed rice, and soya/chili/tomato sauce is a popular favorite (Chowmein) in China and other South East Asian regions.&nbsp;</p>\r\n', 'cabagge', 8.45, 'cabagge_1559120711.jpg', '0000-00-00', 0),
(35, 5, 'Ladies Finger, 250 g', '<p>Ladies finger is a green vegetable with a tip at the end and a lighter green head, which is inedibe and to be thrown away. It tastes mild and slightly grassy.&nbsp;</p>\r\n\r\n<p>Refrigerate them and do not wash them until they are ready to use.<br />\r\nLadies fingers are used in curries, sambhar and can be fried, stuffed and cooked.</p>\r\n\r\n<p>Ladies finger aids in digestion as it contains prebiotic fiber and controls obesity and cholesterol.<br />\r\n<br />\r\nIt acts as hair conditioner, fights dandruff and moistures the scalp.</p>\r\n', 'ladies-finger-250-g', 8.65, 'ladies-finger-250-g_1559121016.jpg', '2019-05-29', 1),
(36, 7, 'White Forest eggless', '<p>Want to take a ride to the world of the eggless white forest? Here comes your dream cake dressed gorgeously in a white gown. It&rsquo;s every bite will make you feel in the bliss of heaven where the deadly combination of white chocolates and vanilla cake will offer you an experience of happiness. Take a break and enjoy a eggless white forest cake with your parents, siblings, friends or relatives</p>\r\n', 'white-forest-eggless', 12.55, 'white-forest-eggless.jpg', '2019-05-29', 1),
(37, 7, 'Fresho Bread - Multigrain, Safe & Preservative Free, 400 g', '<p>Freshly Baked bread is one of lifes greatest simple pleasures and at Bigbasket we decided to give you just that. We start baking our breads once you order using the finest ingredients available. At Bigbasket were passionate about making bread extra special, so we hope youll enjoy eating it as much as we enjoyed baking it. Our Multigrain Bread Is The Perfect Option Of A Healthy Meal. Topped With Seeds And Oats, We Bring To You A Mixture Of Various Healthy Ingredients In Our Freshly Baked Multigrain Bread</p>\r\n\r\n<p>Ingredients</p>\r\n\r\n<p>Refined Wheat Flour, Multigrain Seeds, (Processed Whole and pieces of Sunflower seeds, Soya grits, flax seeds, Sesame seeds, Melon seeds, Oat flakes and Wheat bran), Sugar, Yeast, Edible common salt, Hydrogenated vegetable fat, butter, Gluten, Bread Improver&nbsp;<br />\r\nProcessed in a facility that also handles / processes dairy products, tree nuts and edible seeds.</p>\r\n', 'fresho-bread-multigrain-safe-preservative-free-400-g', 2.99, 'fresho-bread-multigrain-safe-preservative-free-400-g.jpg', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10'),
(11, 9, 'PAYID-LTQFZCA0FT73943219197730', '2019-05-18'),
(12, 9, 'PAYID-LTQGHXQ3FL75725C17846627', '2019-05-18'),
(13, 9, 'PAYID-LTQPIZA1MR09965210466526', '2019-05-19'),
(14, 9, 'PAYID-LTQPLOI76588111MX989805B', '2019-05-19'),
(15, 9, 'PAYID-LTQ2JDY8WA82935EX284772W', '2019-05-19'),
(16, 9, 'PAYID-LTRCSII6CU376490L053831N', '2019-05-20'),
(17, 9, 'PAYID-LTRFYOQ53P23490HJ3998834', '2019-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$bBHoPmtvUozJJRuqiZD34.o/6EVs4yOjSwHLzaprcWRfIOeBsnbR6', 2, 'Admin', '', '', '', 'thanos1.jpg', 2, '', '', '2018-05-01'),
(9, 'deepaksen454@gmail.com', '$2y$10$ed2Gtcmd.z4onBlmEc2n/un73nFSKUjhApaezuVdzLV5mEN9FPFy2', 0, 'Deepak', 'Sen', 'kathmandu', '123456789', 'IMG_9066.jpg', 1, 'k8FBpynQfqsv', 'rdngYkWL1cCOxsu', '2018-05-09'),
(17, 'pritambdrkarki.pk@gmail.com', '$2y$10$gUcC5efzyrHh1QvwVjdPxOgvlEfjDl/CTnB0DQE1A.cC6ClhpeQtm', 0, 'Pritam', 'Karki', '', '', '', 0, 'sdfsdsd', '', '2019-05-19'),
(19, 'versacenevein@gmail.com', '$2y$10$qftoz2yYmjDTJMfe6WMcl.HbQZp1yVAD9M2o/PP2Axx8rUzttPOyW', 0, 'sapar', 'sen', '', '', '', 1, 'zdQSM4KJZgOo', '', '2019-05-19'),
(31, 'pritam@gmail.com', '$2y$10$oeE.OokVG7PUqtO0p4Su.eEopAdiELYEPelzer2/3JWRvPTSNXsuq', 1, 'Pritam', 'Karki', 'teku', '', '', 1, 'ZrILAt71fzYH', '', '2019-05-19'),
(32, 'deepak@gmail.com', '$2y$10$vgEFWjNNkNfAtaobWm1TEuKCz6arH/iPgmXfTA6I7Wpu206sHbrBW', 1, 'Deepak', 'Sen', '', '', '', 1, 'WHG4Z9cTKoMY', '', '2019-05-19'),
(33, 'nischal@gmail.com', '$2y$10$II97SAWsR8UlleR.fH95auQrYx4ylv5gfoGE17jL2Kft7OWvBMV/S', 1, 'Nischal', 'Khatri', '', '', '', 1, '', '', '2019-05-19'),
(34, 'mithlesh@gmail.com', '$2y$10$4N3cMKwx3MTIYZW9xhvQI.rYmX8at99dfBRErU640lDkyR/wxT4MK', 1, 'Mithlesh', 'Yadav', '', '', '', 1, '', '', '2019-05-19'),
(35, 'bibek@gmail.com', '$2y$10$f6w/nN1Ftj6uB5gcR1m3GuQVevR.AEwStp1.jBqid.TE5oruJxBmm', 1, 'Bibek', 'Ray', '', '', '', 1, '', '', '2019-05-19'),
(36, 'dbfdb@jbhk.com', '$2y$10$9RTl8MBymJB3Ab2BaFyi3OiIqaRnZz7ZC7ExBKfM/cXKxsYGBeNo6', 0, 'don', 'fdvdfb', '', '', '', 0, 'ku3D4yiEdUh5', '', '2019-05-29'),
(37, 'dbfdaccacb@jbhk.com', '$2y$10$8IuTmnULEqeSfamkO2W3LutZx84dmizskWKINvNeQaA9ZDfBpY9ku', 0, 'don', 'fdvdfb', '', '', '', 0, 'KzEphjIsd1WF', '', '2019-05-29'),
(38, 'dextersmith454@gmail.com', '$2y$10$hupRPsia4hcBwkibEKFZ/.6Sw/QKoqWju60SG3ewQNgc.z7Nch0tC', 0, 'dexter', 'Den', '', '', '', 0, 'dZqazeCibk7K', '', '2019-05-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
