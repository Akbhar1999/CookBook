-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 06, 2022 at 07:58 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `AC_COMP1321_web_technologies`
--

-- --------------------------------------------------------

--
-- Table structure for table `Author`
--

CREATE TABLE `Author` (
  `author_id` int(11) NOT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Author`
--

INSERT INTO `Author` (`author_id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'Rowney', 'Rolse', 'rrolseMac@vk.com', '8d3a85614b6f848c085a4919e4a3b4c2'),
(2, 'Wallace', 'Burtonshaw', 'wburtonshaw1@storify.com', 'a11011bdf18eaf60f3de8add73dd3552'),
(3, 'Kati', 'MacRorie', 'kmacrorie2@telegraph.co.uk', '8d3a85614b6f848c085a4919e4a3b4c2'),
(4, 'Delores', 'Dicky', 'ddicky3@friendfeed.com', '8d3a85614b6f848c085a4919e4a3b4c2'),
(5, 'Vito', 'Burth', 'vburth4@pen.io', '8d3a85614b6f848c085a4919e4a3b4c2'),
(6, 'Sunshine', 'Schiell', 'sschiell5@merriam-webster.com', '8d3a85614b6f848c085a4919e4a3b4c2'),
(7, 'Sibella', 'Kohter', 'skohter6@woothemes.com', '8d3a85614b6f848c085a4919e4a3b4c2'),
(8, 'Brok', 'Player', 'bplayer7@com.com', '8d3a85614b6f848c085a4919e4a3b4c2'),
(9, 'Sallee', 'Bruyett', 'sbruyett8@hud.gov', '8d3a85614b6f848c085a4919e4a3b4c2'),
(10, 'Valentine', 'Barrow', 'vbarrow9@virginia.edu', '8d3a85614b6f848c085a4919e4a3b4c2'),
(69, 'Gareth', 'Febry', 'gfebry9@tinypic.com', '8d3a85614b6f848c085a4919e4a3b4c2'),
(91, 'johnass', 'smithaa', 'john@gmaail.com', '8d3a85614b6f848c085a4919e4a3b4c2'),
(92, 'Mike', 'Alam', 'Mike@gmail.com', 'faac52d73c04c5951abc6b1217eecba4'),
(93, 'liam', 'adams', 'sss@aa.com', '6960f76a148c4b453886995a829dadb1'),
(94, 'Tom', 'Alan', 't@a.com', 'aaf2937a4d85ed37fbf6618460c0abb0'),
(95, 'tom', 'AlamNew', 's@accclc.com', 'f6b42acbe4e3c7941eb859eb83bc4f4e');

-- --------------------------------------------------------

--
-- Table structure for table `AuthorRole`
--

CREATE TABLE `AuthorRole` (
  `author_id` int(11) NOT NULL,
  `role_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `AuthorRole`
--

INSERT INTO `AuthorRole` (`author_id`, `role_id`) VALUES
(1, 'Account Administrator'),
(1, 'Content Editor'),
(1, 'Site Administrator'),
(2, 'Account Administrator'),
(2, 'Content Editor'),
(2, 'Site Administrator'),
(3, 'Account Administrator'),
(3, 'Content Editor'),
(3, 'Site Administrator'),
(4, 'Account Administrator'),
(4, 'Content Editor'),
(4, 'Site Administrator'),
(5, 'Account Administrator'),
(5, 'Content Editor'),
(5, 'Site Administrator'),
(6, 'Account Administrator'),
(6, 'Content Editor'),
(6, 'Site Administrator'),
(7, 'Account Administrator'),
(7, 'Content Editor'),
(7, 'Site Administrator'),
(8, 'Account Administrator'),
(8, 'Content Editor'),
(8, 'Site Administrator'),
(9, 'Account Administrator'),
(9, 'Content Editor'),
(9, 'Site Administrator'),
(10, 'Account Administrator'),
(10, 'Content Editor'),
(10, 'Site Administrator'),
(69, 'Account Administrator'),
(69, 'Content Editor'),
(91, 'Account Administrator'),
(91, 'Content Editor'),
(92, 'Account Administrator'),
(92, 'Content Editor'),
(93, 'Account Administrator'),
(93, 'Content Editor'),
(94, 'Account Administrator'),
(94, 'Content Editor'),
(95, 'Account Administrator'),
(95, 'Content Editor');

-- --------------------------------------------------------

--
-- Table structure for table `Categories`
--

CREATE TABLE `Categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Categories`
--

INSERT INTO `Categories` (`category_id`, `category_name`) VALUES
(1, 'Dessert'),
(2, 'Main Dish'),
(3, 'Bread'),
(4, 'Breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `Ingredients`
--

CREATE TABLE `Ingredients` (
  `ingredient_id` int(11) NOT NULL,
  `recipe_id` int(10) DEFAULT NULL,
  `ingredient` varchar(255) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Ingredients`
--

INSERT INTO `Ingredients` (`ingredient_id`, `recipe_id`, `ingredient`, `title`) VALUES
(1, 3, '225ml rapeseed oil, plus more for the tins', NULL),
(2, 3, '250g self-raising flour\r\n', NULL),
(3, 3, '4 tbsp cocoa', NULL),
(4, 3, '1 ½ tsp bicarbonate of soda', NULL),
(5, 3, '225g caster sugar', NULL),
(6, 3, '3 tbsp golden syrup', NULL),
(7, 3, '3 large eggs, beaten', NULL),
(8, 3, '225ml milk', NULL),
(18, 4, '100g slightly salted butter , cut into small pieces, plus extra for the tin\r\n', NULL),
(19, 4, '200g 70% dark chocolate , broken into chunks\r\n', NULL),
(20, 4, '150g chocolate and hazelnut spread\r\n', NULL),
(21, 4, '3 eggs , beaten\r\n', NULL),
(22, 4, '200g golden caster sugar\r\n', NULL),
(23, 4, '150g plain flour\r\n', NULL),
(24, 4, '100g toasted pecan nuts , roughly chopped\r\n', NULL),
(25, 4, 'ice cream and caramel sauce, to serve\r\n', NULL),
(26, 5, '1 chicken breast\r\n', NULL),
(27, 5, '1 tsp chipotle paste', NULL),
(28, 5, '1 lime, juiced\r\n', NULL),
(29, 5, '1-2 slices cheese\r\n', NULL),
(30, 5, '1 brioche bun, split\r\n', NULL),
(31, 5, '½ avocado\r\n', NULL),
(32, 5, '2 cherry tomatoes, chopped\r\n', NULL),
(33, 5, '3-4 pickled jalapeño slices, chopped\r\n', NULL),
(34, 5, '½ small garlic clove, finely grated\r\n', NULL),
(36, 6, '6 chicken breasts, chopped into large chunks\r\n', NULL),
(37, 6, '2 each red, orange and green peppers , deseeded and chopped into large chunks\r\n', NULL),
(38, 6, 'warmed flatbreads , chopped\r\n', NULL),
(39, 6, 'tomato and lemon wedges, to serve\r\n', NULL),
(41, 7, '2 tbsp olive oil, plus a little for the dish\r\n', NULL),
(42, 7, '750g lean beef mince\r\n', NULL),
(43, 7, '90g pack prosciutto', NULL),
(44, 7, 'half quantity of our tomato sauce\r\n', NULL),
(45, 7, '200ml hot beef stock\r\n', NULL),
(46, 7, 'a little grated nutmeg\r\n', NULL),
(47, 7, '300g pack fresh lasagne sheets\r\n', NULL),
(48, 7, 'half quantity of our white sauce\r\n', NULL),
(49, 7, '125g ball mozzarella, torn into thin strips\r\n', NULL),
(50, 8, '250g plain flour\r\n', 'For the shortbread'),
(51, 8, '75g caster sugar\r\n', NULL),
(52, 8, '175g butter, softened\r\n', NULL),
(60, 10, '2 tsp fast-action dried yeast\r\n', NULL),
(61, 10, '500g strong white bread flour, plus extra for dusting\r\n', NULL),
(62, 10, '2 tsp salt\r\n', NULL),
(63, 10, '1 tbsp olive oil\r\n', NULL),
(64, 11, '15ml olive oil\r\n', NULL),
(65, 11, '130g tomatoes , halved\r\n', NULL),
(66, 11, '4 rashers turkey bacon\r\n', NULL),
(67, 11, '180g sirloin steak , trimmed of visible fat\r\n', NULL),
(68, 11, '150g mushrooms , sliced\r\n', NULL),
(69, 11, '160g spinach\r\n', NULL),
(70, 11, '1 egg\r\n', NULL),
(71, 12, '50g cream cheese\r\n', NULL),
(72, 12, '2 bagels , halved and lightly toasted\r\n', NULL),
(73, 12, '100g smoked salmon , cut into slices\r\n', NULL),
(74, 12, '1 avocado , sliced\r\n', NULL),
(75, 12, '½ lemon , cut into wedges\r\n', NULL),
(76, 12, '1 tbsp olive oil\r\n', NULL),
(77, 12, '2 eggs\r\n', NULL),
(78, 12, 'pinch of cayenne pepper\r\n', NULL),
(79, 13, '50g mixed dried fruit (a mixture of raisins, sultanas and apricots is nice)\r\n', NULL),
(80, 13, '50g mixed seed\r\n', NULL),
(81, 13, '140g oats\r\n', NULL),
(82, 13, '25g multi-grain hoop cereal\r\n', NULL),
(83, 13, '100g butter\r\n', NULL),
(84, 13, '100g light muscovado sugar\r\n', NULL),
(85, 13, '100g golden syrup\r\n', NULL),
(86, 14, '2 large eggs\r\n', NULL),
(87, 14, '150ml pot natural low-fat yogurt\r\n', NULL),
(88, 14, '50ml rapeseed oil\r\n', NULL),
(89, 14, '100g apple sauce or puréed apple\r\n', NULL),
(90, 14, '1 ripe banana , mashed\r\n', NULL),
(91, 14, '4 tbsp honey\r\n', NULL),
(92, 14, '1 tsp vanilla extract\r\n', NULL),
(93, 14, '200g wholemeal flour\r\n', NULL),
(94, 14, '50g rolled oats , plus extra for sprinkling\r\n', NULL),
(95, 14, '1 ½ tsp baking powder\r\n', NULL),
(96, 14, '1 ½ tsp bicarbonate of soda\r\n', NULL),
(97, 14, '1 ½ tsp cinnamon\r\n', NULL),
(98, 14, '100g blueberry\r\n', NULL),
(99, 14, '2 tbsp mixed seed , we used pumpkin, sunflower and flaxseed\r\n', NULL),
(187, 58, '170g butter', NULL),
(188, 58, '140g Oreo biscuits (or similar) cream removed\r\n', NULL),
(189, 58, '140g digestive biscuits , crushed to fine crumbs\r\n', NULL),
(190, 58, '600g full fat soft cheese (we used Philadelphia)\r\n', 'For the filling\r\n'),
(191, 58, '170g golden caster sugar\r\n', NULL),
(192, 58, '2 tbsp plain flour\r\n', NULL),
(193, 58, '1½ tsp vanilla extract\r\n', NULL),
(194, 58, '2 large eggs\r\n', NULL),
(195, 58, '200g soured cream\r\n', NULL),
(196, 58, 'gel food colourings\r\n', NULL),
(197, 58, 'double cream , whipped to decorate (optional)\r\n', 'For the topping\r\n'),
(198, 59, '2 x 400g cans coconut milk (not light)\r\n', NULL),
(199, 59, '175g caster sugar\r\n', NULL),
(200, 59, '50g cocoa powder\r\n', NULL),
(201, 59, '100g vegan dark chocolate , chopped\r\n', NULL),
(202, 59, '1 tsp sea salt flakes\r\n', NULL),
(203, 59, '1 tbsp vanilla extract or 1 heaped tsp vanilla bean paste\r\n', NULL),
(204, 59, '2 tbsp cornflour\r\n', NULL),
(205, 60, '500g plain white flour or wholemeal flour, plus extra\r\n', NULL),
(206, 60, '2 tsp bicarbonate of soda\r\n', NULL),
(207, 60, '½ tsp fine salt\r\n', NULL),
(208, 60, '1 tbsp sugar\r\n', NULL),
(209, 60, '350ml-400ml natural yogurt or buttermilk\r\n', NULL),
(210, 60, 'handful of oats or seeds, optional\r\n', NULL),
(211, 61, '270g strong brown bread flour , plus extra for dusting\r\n', NULL),
(212, 61, '40g malted bread flour\r\n', NULL),
(213, 61, '4g fast-action dried yeast\r\n', NULL),
(214, 61, '55g malt extract\r\n', NULL),
(215, 61, 'two-thirds of a tbsp olive oil , plus extra for the tin\r\n', NULL),
(216, 62, '500g strong bread flour\r\n', NULL),
(217, 62, '7g sachet fast-action dried yeast\r\n', NULL),
(218, 62, '1 tsp salt\r\n', NULL),
(219, 62, '300ml hand-hot water\r\n', NULL),
(220, 62, '2 tbsp sunflower oil\r\n', NULL),
(221, 62, '1 tbsp honey\r\n', NULL),
(222, 63, '8 good-quality pork sausages\r\n', NULL),
(223, 63, '1 kg beef mince\r\n', NULL),
(224, 63, '1 onion, finely chopped\r\n', NULL),
(225, 63, '½ a large bunch flat-leaf parsley, finely chopped\r\n', NULL),
(226, 63, '85g parmesan, grated, plus extra to serve (optional)\r\n', NULL),
(227, 63, '100g fresh breadcrumbs\r\n', NULL),
(228, 63, '2 eggs, beaten with a fork\r\n', NULL),
(229, 63, 'olive oil, for roasting\r\n', NULL),
(230, 63, 'spaghetti, to serve (about 100g per portion)\r\n', NULL),
(231, 63, '3 tbsp olive oil\r\n', 'For the sauce\r\n'),
(232, 63, '4 garlic cloves, crushed\r\n', NULL),
(233, 63, '4 x 400g cans chopped tomatoes\r\n', NULL),
(234, 63, '125ml red wine (optional)\r\n', NULL),
(235, 63, '3 tbsp caster sugar\r\n', NULL),
(236, 63, '½ a large bunch of flat-leaf parsley, finely chopped\r\n', NULL),
(237, 63, 'few basil leaves (optional)\r\n', NULL),
(238, 64, '500g lamb mince\r\n', NULL),
(239, 64, '1 small onion, coarsely grated\r\n', NULL),
(240, 64, '4 garlic cloves, minced or finely grated\r\n', NULL),
(241, 64, '100g fresh breadcrumbs\r\n', NULL),
(242, 64, '2 tsp ground cumin\r\n', NULL),
(243, 64, '2 tsp ground coriander\r\n', NULL),
(244, 64, '1 tsp dried oregano\r\n', NULL),
(245, 64, '¼ tsp smoked paprika\r\n', NULL),
(246, 64, 'sunflower oil for oiling\r\n', NULL),
(247, 65, '8 skinless boneless chicken thighs\r\n', NULL),
(248, 65, 'sunflower oil, for deep-frying\r\n', NULL),
(249, 65, '2 tbsp paprika\r\n', 'For the spice mix\r\n'),
(250, 65, '2 tsp garlic granules\r\n', NULL),
(251, 65, '1 tsp chilli powder\r\n', NULL),
(252, 65, '1 tsp black pepper\r\n', NULL),
(253, 65, '½ tsp dried oregano\r\n', NULL),
(254, 65, '1 chicken stock cube\r\n', NULL),
(255, 65, '500ml whole milk\r\n', 'For the buttermilk marinade\r\n'),
(256, 65, '2 tbsp cider or white wine vinegar\r\n', NULL),
(257, 65, '1 egg\r\n', NULL),
(258, 65, '100g self-raising flour\r\n', 'For the coating\r\n'),
(259, 65, '100g cornflour\r\n', NULL),
(260, 65, '¼ tsp turmeric\r\n', NULL),
(261, 66, '150g golden icing sugar', 'For the shortbread\r\n'),
(262, 66, '225g butter , at room temperature\r\n', NULL),
(263, 66, '300g plain flour , sifted, plus extra for dusting\r\n', NULL),
(264, 66, '55g cocoa powder , sifted\r\n', ''),
(265, 66, '300g golden icing sugar\r\n', 'For the peanut buttercream\r\n'),
(266, 66, '50g butter , at room temperature\r\n', NULL),
(267, 66, '100g smooth peanut butter\r\n', NULL),
(268, 66, '2-3 tbsp milk\r\n', NULL),
(269, 67, '1 tsp chipotle paste', NULL),
(270, 67, '1 egg', NULL),
(271, 67, '1 tsp rapeseed oil', NULL),
(272, 67, '50g kale', NULL),
(273, 67, '7 cherry tomatoes, halved', NULL),
(274, 67, '½ small avocado, sliced', NULL),
(275, 67, '1 wholemeal tortilla wrap, warmed', NULL),
(276, 68, '275g whole milk', NULL),
(277, 68, '40g unsalted butter , cubed', NULL),
(278, 68, '500g strong white flour , plus extra for dusting', NULL),
(279, 68, '7g dried active yeast', NULL),
(280, 68, '50g caster sugar', ''),
(281, 68, '1 small egg , plus 1 egg, beaten, for glazing', NULL),
(282, 68, '75g butter , melted', 'For the filling\r\n'),
(283, 68, '150g caster sugar', NULL),
(284, 68, '3 tsp ground cinnamon', NULL),
(285, 68, '50g caster sugar', 'For the coating\r\n'),
(286, 68, '1 tsp ground cinnamon', NULL),
(287, 69, '500g strong white bread flour, plus extra for kneading', NULL),
(288, 69, '7g sachet fast action yeast', NULL),
(289, 69, '1½ tsp caster sugar', NULL),
(290, 69, '1½ tsp fine sea salt', NULL),
(291, 69, '300-350ml warm water', NULL),
(292, 69, 'vegetable oil, for the bowl', NULL),
(293, 69, '90g rice flour', NULL),
(294, 69, '½ x 7g sachet fast action yeast', NULL),
(295, 69, '¼ tsp salt', NULL),
(296, 69, '1 tsp golden caster sugar', NULL),
(297, 69, '½ tbsp toasted sesame oil', NULL),
(298, 69, '90ml warm water', NULL),
(323, 73, '175g unsalted butter , softened, plus more for the tin', NULL),
(324, 73, '250g golden caster sugar', NULL),
(325, 73, '4 large eggs', NULL),
(326, 73, '225g plain flour', NULL),
(327, 73, '2 tsp baking powder', NULL),
(328, 73, '50g crème fraîche', NULL),
(329, 73, '100g dark chocolate , melted and cooled a little', NULL),
(330, 73, '3 tbsp strawberry jam', NULL),
(331, 73, '8-10 candy canes , red and white', NULL),
(332, 73, 'mini white meringues and jelly sweets, to decorate', NULL),
(333, 73, '500g white caster sugar', 'For the angel frosting\r\n'),
(334, 73, '1 tsp vanilla extract', NULL),
(335, 73, '1 tbsp liquid glucose', NULL),
(336, 73, '2 egg whites', NULL),
(337, 73, '30g icing sugar , sifted', NULL),
(352, 81, '4 free-range eggs , separated', NULL),
(353, 81, '100g caster sugar', NULL),
(354, 81, '300ml double cream chocolate , fruit, vanilla or coffee extract (optional)', NULL),
(355, 81, 'cones , nuts, flakes, sauces, to serve', NULL),
(368, 83, '100ml full-fat milk', NULL),
(369, 83, '2 tbsp natural yogurt', NULL),
(370, 83, '150g frozen fruits of the forest', NULL),
(371, 83, '1 banana', NULL),
(372, 83, '50g blueberries', NULL),
(373, 83, '1 tbsp chia seeds', NULL),
(374, 83, '1 tsp mixed seeds', NULL),
(375, 83, '1 tbsp goji berries', NULL),
(383, 85, '2 chicken thighs', NULL),
(384, 85, '2 chicken legs', NULL),
(385, 85, '2-3 tsp crushed/powered allspice (pimento)', NULL),
(386, 85, '1 tsp fine salt', NULL),
(387, 85, '4 spring onions, trimmed', NULL),
(388, 85, '1 medium white onion', NULL),
(389, 85, '1- 2 Scotch bonnet peppers', NULL),
(390, 85, '6-8 garlic cloves', NULL),
(391, 85, '2-3 tbsp picked thyme leaves', NULL),
(392, 85, '240ml lime juice or orange or pineapple juice', NULL),
(393, 85, '60ml white or malt vinegar', NULL),
(394, 85, '½ tsp mixed spice', NULL),
(395, 85, '1-2 tbsp dark sugar', NULL),
(402, 87, '500g white or wholemeal bread', NULL),
(403, 87, '500g/1lb 2oz mixed dried fruit', NULL),
(404, 87, '85g mixed peel', NULL),
(405, 87, '1½ tbsp mixed spice', NULL),
(406, 87, '600ml milk', NULL),
(407, 87, '2 large eggs, beaten', NULL),
(408, 87, '140g light muscovado sugar', NULL),
(409, 87, 'zest 1 lemon (optional)', NULL),
(410, 87, '100g butter, melted', NULL),
(411, 87, '2 tbsp demerara sugar', NULL),
(412, 88, '150ml 0% fat Greek yogurt', NULL),
(413, 88, '2 tbsp masala paste', NULL),
(414, 88, 'handful of coriander leaves, chopped, plus extra leaves to serve', NULL),
(415, 88, 'juice 1 lime , pinch of zest, plus wedges to serve', NULL),
(416, 88, '4 skinless, boneless chicken breasts , each cut into 6 chunks', NULL),
(417, 88, 'wholemeal chapatis , to serve', NULL),
(418, 88, '250g pack cherry tomatoes , hulled or quartered', 'For the salad'),
(419, 88, '1 red onion , finely chopped', NULL),
(420, 88, '1 cucumber , cut into chunks', NULL),
(421, 3, '200g dark chocolate, chopped', 'For the pretzel bark.'),
(422, 3, '2 tbsp chocolate chips', NULL),
(423, 3, 'small handful pretzel pieces', NULL),
(424, 3, '2 tbsp honeycomb pieces', ''),
(425, 3, '65g dark chocolate', 'For the icing'),
(426, 3, '250g soft salted butter', NULL),
(427, 3, '500g icing sugar\r\n', NULL),
(428, 3, '45g smooth peanut butter\r\n', NULL),
(429, 3, '1-2 tbsp cocoa', NULL),
(430, 3, '200ml double cream\r\n', 'For the ganache drip'),
(431, 3, '100g dark chocolate, finely chopped\r\n', NULL),
(432, 3, 'chocolate eggs, some hollow, some filled, gold lustre, toffee popcorn and pretzels\r\n', 'For the decoration'),
(433, 6, '2 garlic cloves , finely grated\r\n', 'For the marinade and sauce'),
(434, 6, '300g natural or Greek yogurt', NULL),
(435, 6, '1 tbsp paprika', NULL),
(436, 6, '3 tbsp ketchup\r\n', NULL),
(437, 8, '100g butter or margarine', 'For the caramel'),
(438, 8, '100g butter or margarine\r\n', NULL),
(439, 8, '100g light muscovado sugar\r\n', NULL),
(440, 8, '397g can condensed milk\r\n', NULL),
(441, 8, '200g plain or milk chocolate, broken into pieces\r\n', 'For the topping'),
(442, 89, '50g self-raising flour', NULL),
(443, 89, '50g wholemeal or wholegrain flour', NULL),
(444, 89, '2 small eggs, separated', NULL),
(445, 89, '150ml skimmed milk', NULL),
(446, 89, 'berries and low-fat yogurt or fromage frais to serve', NULL),
(447, 90, '10 Yorkshire tea bags , or another good strong tea', 'For the filling\r\n'),
(448, 90, '400ml double cream', NULL),
(449, 90, '500g mascarpone cheese', NULL),
(450, 90, '280g cream cheese (not low fat)', NULL),
(451, 90, '150g icing sugar', NULL),
(452, 90, '1 tsp vanilla extract', NULL),
(453, 90, '400g digestive biscuits , plus extra to serve', 'For the base\r\n'),
(454, 90, '200g butter , melted', NULL),
(455, 90, '50g butter', 'For the brown butter & tea sauce\r\n'),
(456, 90, '100g light brown sugar', NULL),
(483, 93, '500g strong white flour, plus extra for dusting', NULL),
(484, 93, '1 ½ tsp salt', NULL),
(485, 93, '50g sugar', NULL),
(486, 93, '2 x 7g sachets fast-action dried yeast', NULL),
(487, 93, 'oil, for greasing', NULL),
(488, 93, '300g butter, at room temperature', NULL),
(489, 93, '1 egg, beaten', NULL),
(490, 94, '170g butter or margarine, plus extra for the tins', NULL),
(491, 94, '170g caster sugar', NULL),
(492, 94, '3 large eggs', NULL),
(493, 94, '170g self-raising flour', NULL),
(494, 94, '1 ½ tsp baking powder', NULL),
(495, 94, '1 tbsp instant coffee, dissolved in 1 tbsp hot water (add more if you like it stronger)', NULL),
(496, 94, '225g icing sugar', 'For the icing'),
(497, 94, '100g butter or margarine', NULL),
(498, 94, '1½ tbsp instant coffee, dissolved in 1 tbsp hot water', NULL),
(499, 94, 'strawberry jam (optional)', NULL),
(500, 94, 'walnuts or cherries, to decorate (optional)', NULL),
(501, 95, '1 tbsp chocolate hazelnut spread (optional)', NULL),
(502, 95, '250ml semi-skimmed milk', NULL),
(503, 95, '2scoops chocolate ice creams', NULL),
(504, 95, '5 marshmallows', NULL),
(505, 95, '30ml double cream, whipped', NULL),
(506, 95, '1 tsp toasted hazelnuts, chopped', NULL),
(507, 96, '400g gluten-free white flour', NULL),
(508, 96, '1 tsp salt', NULL),
(509, 96, '7g sachet fast-action dried yeast', NULL),
(510, 96, '284ml buttermilk ', NULL),
(511, 96, '2 eggs', NULL),
(512, 96, '2 tbsp olive oil', NULL),
(513, 97, '450g strong white flour', NULL),
(514, 97, '2 tsp fine sea salt', NULL),
(515, 97, '50g caster sugar', NULL),
(516, 97, '7g dried active yeast', NULL),
(517, 97, '100ml whole milk', NULL),
(518, 97, '4 eggs at room temperature, beaten, plus 1 for egg wash', NULL),
(519, 97, '190g salted butter , cubed and softened', NULL),
(530, 99, '1kg large Maris Piper potatoes , peeled', NULL),
(531, 99, '1 tbsp white or malt vinegar', NULL),
(532, 99, '75ml vegetable oil', NULL),
(533, 99, '2 tsp plain flour', NULL),
(534, 99, '2 tsp cornflour or potato flour', NULL),
(535, 99, '½ tsp baking powder', NULL),
(536, 99, 'small pinch cayenne', NULL),
(537, 100, '4 chicken legs, skin removed', NULL),
(538, 100, '4 skinless chicken breasts', NULL),
(539, 100, '1 lime , cut into wedges', NULL),
(540, 100, 'green chutney', NULL),
(541, 100, 'a few mint leaves , chopped', NULL),
(542, 100, '4 tsp Kashmiri chilli powder', 'For the first marinade\r\n'),
(543, 100, '1 tbsp ginger & garlic paste', NULL),
(544, 100, '1 lime , juiced', NULL),
(545, 100, '2 tsp Kashmiri chilli powder', 'For the second marinade\r\n'),
(546, 100, '2 tsp ginger & garlic paste', NULL),
(547, 100, '1 tbsp lime juice', NULL),
(548, 100, '1 ½ tsp paprika', NULL),
(549, 100, '1 tsp turmeric', NULL),
(550, 100, '80g natural yogurt', NULL),
(551, 100, '1 tsp garam masala', NULL),
(552, 100, '1 tbsp vegetable oil', NULL),
(615, 101, '8 chicken thighs , on the bone, skin removed', NULL),
(616, 101, '2 tbsp lemon juice , plus wedges to serve', NULL),
(617, 101, 'large knob of butter , to serve', NULL),
(618, 101, '125g pot full-fat plain yogurt', NULL),
(619, 101, '4 fat garlic cloves', NULL),
(620, 101, 'thumb-sized piece ginger , peeled', NULL),
(621, 101, '½ - ¾ tsp red chilli powder', NULL),
(622, 101, '1 tsp cumin powder', NULL),
(623, 101, '1 tsp garam masala', NULL),
(624, 101, '1 tbsp vegetable oil', NULL),
(639, 115, '3 garlic cloves , roughly chopped', NULL),
(640, 115, 'knob of fresh ginger , roughly chopped, plus extra to serve', NULL),
(641, 115, '1 orange , grated zest and juice', NULL),
(642, 115, '3 spring onions , roughly chopped', NULL),
(643, 115, '2 tbsp clear honey', NULL),
(644, 115, '1 tbsp light soy sauce', NULL),
(645, 115, '2 tbsp vegetable oil', NULL),
(646, 115, '4 small skinless boneless chicken breast fillets , cut into cubes', NULL),
(647, 115, '20 button mushrooms', NULL),
(648, 115, '20 cherry tomatoes', NULL),
(649, 115, '2 large red peppers , seeded and each cut into 10', NULL),
(650, 116, '2 large eggs', NULL),
(651, 116, '80ml whole milk', NULL),
(652, 116, '40ml double cream', NULL),
(653, 116, '1 tsp vanilla extract', NULL),
(654, 116, '½ tsp cinnamon', NULL),
(655, 116, '4 thick slices brioche', NULL),
(656, 116, '2 tbsp vegetable oil', NULL),
(657, 116, '2 tbsp butter', NULL),
(658, 116, 'icing sugar and fresh berries, to serve (optional)', NULL),
(659, 117, '400g beef mince', 'For the meatballs\r\n'),
(660, 117, '100g ciabatta, sourdough or other white bread, crusts removed, torn into pieces', NULL),
(661, 117, '100ml milk', NULL),
(662, 117, '6 garlic cloves, very finely chopped or grated', NULL),
(663, 117, 'large handful parsley leaves, finely chopped', NULL),
(664, 117, '1 egg, beaten', NULL),
(665, 117, '1 tbsp dried oregano', NULL),
(666, 117, 'grating of nutmeg', NULL),
(667, 117, '½ tsp Marmite', NULL),
(668, 117, '50g grated parmesan, plus extra to serve', NULL),
(669, 117, '150g mozzarella or fontina, chopped into 18 pieces', NULL),
(670, 117, '4 tbsp olive oil', 'For the sauce\r\n'),
(671, 117, '4 garlic cloves, finely sliced', NULL),
(672, 117, 'pinch of golden caster sugar', NULL),
(673, 117, '3 x 400g cans chopped tomatoes', NULL),
(674, 117, '500g spaghetti, to serve', NULL),
(675, 118, '2 tbsp double cream', NULL),
(676, 118, '150ml freshly brewed black coffee', NULL),
(677, 118, '50ml Irish whiskey', NULL),
(678, 118, '½ - 1 tsp brown sugar', NULL),
(679, 118, 'pinch freshly grated nutmeg', NULL),
(704, 123, '12 best-end lamb chops, flattened to 2cm thick (ask your butcher to do this for you)', NULL),
(705, 123, 'green chutney', NULL),
(706, 123, '1 lime, cut into wedges to serve', NULL),
(707, 123, '2 tsp Kashmiri chilli powder', 'For the first marinade\r\n'),
(708, 123, '2 tbsp ginger & garlic paste', NULL),
(709, 123, '50ml vegetable oil', NULL),
(710, 123, '2 tsp tomato purée', 'For the second marinade\r\n'),
(711, 123, 'large pinch of crushed black pepper', NULL),
(712, 123, '2 tsp Kashmiri chilli powder', NULL),
(713, 123, '1 tsp garam masala', NULL),
(714, 123, '1 tsp turmeric', NULL),
(720, 124, '500g strong white flour, plus extra for dusting', NULL),
(721, 124, '7g sachet fast-action dried yeast', NULL),
(722, 124, '1 tsp salt', NULL),
(723, 124, 'up to 350ml lukewarm water', NULL),
(724, 124, 'a little sunflower oil, for greasing', NULL),
(725, 125, '12 boneless, skinless chicken thighs', NULL),
(726, 125, '2 garlic cloves , crushed', 'For the marinade\r\n'),
(727, 125, '2 garlic cloves , crushed', NULL),
(728, 125, ' zeast and juice 1 lemon', NULL),
(729, 125, '1 tsp ground cinnamon', NULL),
(730, 125, '1 tsp ground allspice', NULL),
(731, 125, '1 tbsp dried oregano (wild if possible)', NULL),
(732, 125, '2 tsp paprika', NULL),
(733, 125, '4 tbsp olive oil', NULL),
(734, 125, 'small bunch parsley , finely chopped', NULL),
(735, 125, 'pitta bread', 'To serve'),
(736, 125, 'dill yogurt sauce , see tip, below left', NULL),
(737, 125, 'tomato, red onion & cucumber salad , see tip, below left', NULL),
(738, 125, 'romaine heart lettuce leaves, shredded, or other crunchy lettuce', NULL),
(935, 86, '250g butter, softened', NULL),
(936, 86, '350g light soft brown sugar', NULL),
(937, 86, '2 large eggs', NULL),
(938, 86, '350g self-raising flour', NULL),
(939, 86, '100g cocoa powder', NULL),
(940, 86, '200g chocolate chips or chopped chocolate chunks, or 400g for optional dipping (choose your favourite type)', NULL),
(964, 122, '200g self-raising flour', NULL),
(965, 122, '1 tsp baking powder', NULL),
(966, 122, '1 egg', NULL),
(967, 122, '300ml milk', NULL),
(968, 122, 'knob butter', NULL),
(969, 122, '150g pack blueberry', NULL),
(970, 122, 'sunflower oil or a little butter for cooking', NULL),
(971, 122, 'golden or maple syrup', NULL),
(979, 72, '85g hot melted butter , plus a little extra for greasing', 'For the biscuit crust\r\n'),
(980, 72, '14 plain chocolate digestives, finely crushed', NULL),
(981, 72, '3 x 300g packs full-fat Philadelphia cheese , at room temperature', 'For the cheesecake'),
(982, 72, '200g golden caster sugar', NULL),
(983, 72, '4 tbsp cocoa , sifted', NULL),
(984, 72, '2 tsp vanilla extract', NULL),
(985, 72, '3 tbsp Tia Maria', NULL),
(986, 72, '3 large eggs', NULL),
(987, 72, '284ml pot soured cream', NULL),
(988, 72, '100g bar dark coffee chocolate , melted (we used Lindt Excellence Coffee Intense)', NULL),
(989, 72, '2-3 tbsp milk', NULL),
(990, 72, '284ml pot double cream', NULL),
(991, 72, 'chocolate curls to decorate (optional)', NULL),
(994, 84, '1 madeira cake', NULL),
(995, 84, '500ml tub mango sorbet', NULL),
(996, 84, '500ml tub vanilla ice cream', NULL),
(997, 84, '50g dark chocolate', NULL),
(998, 84, '500ml tub raspberry sorbet', NULL),
(999, 84, '150ml double cream , whipped', NULL),
(1000, 84, 'maraschino cherries , to decorate', NULL),
(1052, 137, '500g skinless boneless chicken thighs, cut into 3 pieces', NULL),
(1053, 137, '1 lemon, juiced', 'For the marinade'),
(1054, 137, '2 tsp ground cumin', NULL),
(1067, 119, '200ml strong black coffee', NULL),
(1068, 119, '50ml milk', NULL),
(1069, 119, 'ice', NULL),
(1070, 119, 'maple syrup, optional', NULL),
(1074, 82, '3tubs of ice cream', NULL),
(1075, 82, '2bags of ice', NULL),
(1076, 82, 'assorted sprinkles, sweets and berries', NULL),
(1077, 82, '400g strawberries , hulled', NULL),
(1078, 82, '100g golden caster sugar', NULL),
(1079, 82, '1 tbsp vanilla extract', NULL),
(1080, 82, '1 lemon , juiced', NULL),
(1081, 82, '2 large Mars bars or other chocolate caramel bars, chopped', NULL),
(1082, 82, '200ml whipping cream', NULL),
(1083, 82, '150g white, milk or dark chocolate', NULL),
(1084, 82, '1tub sprinkles', NULL),
(1085, 82, '8 ice cream cones', NULL),
(1086, 137, '2 tsp ground cumin', NULL),
(1087, 137, '2 tsp paprika', NULL),
(1088, 137, '1-2 tsp hot chilli powder', NULL),
(1089, 137, '200g natural yogurt', NULL),
(1090, 137, '2 tbsp butter, ghee or vegetable oil', 'For the curry\r\n'),
(1091, 137, '1 large onion, chopped', NULL),
(1092, 137, '3 garlic cloves, crushed', NULL),
(1093, 137, '1 green chilli, deseeded and finely chopped (optional)', NULL),
(1094, 137, 'thumb-sized piece ginger, grated', NULL),
(1095, 137, '1 tsp garam masala', NULL),
(1096, 137, '2 tsp ground fenugreek', NULL),
(1097, 137, '3 tbsp tomato purée', NULL),
(1098, 137, '250ml chicken stock', NULL),
(1099, 137, '50g flaked almonds, toasted', NULL),
(1100, 137, 'cooked basmati rice', 'To serve (optional)\r\n'),
(1101, 137, 'naan bread', NULL),
(1102, 137, 'mango chutney or lime pickle', NULL),
(1103, 137, 'fresh coriander', NULL),
(1104, 137, 'lime wedges', NULL),
(1159, 145, '2 tbsp vegetable oil', NULL),
(1160, 145, '100g popcorn kernels', NULL),
(1161, 145, '250g caster sugar', NULL),
(1162, 145, '50g salted butter , cubed', NULL),
(1239, 98, '300g stoned date , chopped', NULL),
(1240, 98, '6 large eggs , separated', NULL),
(1241, 98, '350g light muscovado sugar', NULL),
(1242, 98, '200g wholemeal flour', NULL),
(1243, 98, '2 tsp baking powder', NULL),
(1244, 98, '100g cocoa', NULL),
(1245, 98, '5 tbsp custard powder', NULL),
(1246, 98, '5 tbsp light muscovado sugar', NULL),
(1247, 98, '50g cocoa powder', NULL),
(1248, 98, '1.2l skimmed milk', NULL),
(1265, 9, '1x 7g sachet dried yeast', NULL),
(1266, 9, '2 tsp golden caster sugar', NULL),
(1267, 9, '300g strong white bread flour, plus extra for dusting', NULL),
(1268, 9, '½ tsp baking powder', NULL),
(1269, 9, '25g butter or ghee, melted, plus extra 2-3 tbsp for the tray and brushing', NULL),
(1270, 9, '150ml natural yogurt', NULL),
(1271, 9, '1 tbsp nigella seeds', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PrepMethod`
--

CREATE TABLE `PrepMethod` (
  `prep_id` int(11) NOT NULL,
  `recipe_id` int(11) DEFAULT NULL,
  `method` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PrepMethod`
--

INSERT INTO `PrepMethod` (`prep_id`, `recipe_id`, `method`) VALUES
(1, 3, 'Heat oven to 180C/160C fan/gas 4. Oil and line the base of three 19cm sandwich tins. Mix the flour, cocoa, bicarb and sugar in a bowl. Make a well in the centre and beat in the syrup, eggs, oil and milk with an electric whisk until smooth.\r\n'),
(2, 3, 'Divide the mix between the tins, and bake for 25-30 mins until the cakes are risen and firm to the touch. Cool in the tins for 10 mins before turning out onto a cooling rack and cooling completely. At this stage, they can be frozen, well wrapped, for up to eight weeks.\r\n'),
(3, 3, 'Make the bark while the cake is cooling. Melt the chocolate in short bursts in the microwave, stirring every 20 secs, until smooth. Spoon onto a parchment-lined baking tray and smooth over with a spatula to make a thinnish layer, around 35 x 20cm. Sprinkle over the chocolate chips along with the pieces of pretzel and honeycomb, then chill until solid. Remove the bark from the fridge and leave for a minute to come to room temperature before using a sharp knife to cut it into shards (if it’s fridge cold, the chocolate will snap rather than cut). Chill again until you’re ready to decorate the cake.\r\n'),
(4, 3, 'To make the icing, melt the chocolate in the microwave, stirring between short blasts, then leave to cool a little. Meanwhile, beat the butter, icing sugar and 1 tbsp boiling water with an electric whisk or stand mixer, slowly at first, then turn up the speed and beat until you get a pale, fluffy icing. Spoon out a third of the mix into a separate bowl and stir in the peanut butter. Whisk the melted chocolate into the remainder of the icing, then beat in the cocoa if you want a darker, more chocolatey-coloured icing.\r\n'),
(5, 3, 'Sandwich the three cakes together with the peanut butter icing. Use half the chocolate icing to coat the sides and top of the cake and fill in the edges between the layers, scraping off any excess. Chill for 20 mins. This is called a crumb coating, allowing you to get a really smooth finish when it comes to the final icing.\r\n'),
(6, 3, 'Spread the remaining chocolate icing over the lightly chilled cake, smoothing over the sides and top so you get a neat finish. Chill again for 20 mins.\r\n'),
(7, 3, 'To make the ganache, heat the cream in a small pan until steaming. Tip the dark chocolate into a bowl, then pour over the cream. Mix well until smooth and shiny. Transfer to a piping bag and leave to cool for a few mins at room temperature.\r\n'),
(8, 3, 'Pipe the ganache on top of the cake, nudging it over the edge and allowing it to drip down neatly. Do this all the way round the cake, then fill in the centre with more ganache. Smooth the top with a knife. Chill for 1 hr for the ganache to set.\r\n'),
(9, 3, 'Press the bark shards into the cake, sticking up. Add lots of chocolate eggs, popcorn and pretzels in and around the shards. Cut into slices to serve. Will keep for up to three days kept in a cool place in an airtight container.\r\n'),
(10, 4, 'Heat oven to 180C/160C fan/ gas 4. Butter and line the base and sides of a 20cm square tin. Put the butter, chocolate and chocolate spread in a heatproof bowl and melt over a pan of lightly simmering water. Once melted, stir and set aside to cool a little.\r\n'),
(11, 4, 'In another bowl, use an electric whisk to beat the eggs and sugar together for 5 mins until light and fluffy. Pour in the chocolate mixture and whisk briefly to combine. Sift in the flour and gently fold through the mixture, then add most of the pecans. Scrape the mixture into the tin and spread out with a spatula. Scatter over the last of the pecans and a good sprinkling of sea salt.\r\n'),
(12, 4, 'Bake for 30-35 mins until set but a little gooey in the middle. Cool, then cut into squares and serve with ice cream and caramel sauce.\r\n'),
(13, 5, 'Put the chicken breast between two pieces of cling film and bash with a rolling pin or pan to about 1cm thick. Mix the chipotle paste with half the lime juice and spread over the chicken.\r\n'),
(14, 5, 'Heat a griddle pan over a high heat. Once hot, cook the chicken for 3 mins each side until cooked through, adding the cheese for the final 2 mins of cooking. Add the bun, cut-side down, to the griddle pan to toast lightly. Season the chicken.\r\n'),
(15, 5, 'Meanwhile, mash the avocado with the remaining lime juice. Stir in the cherry tomatoes, jalapeño and garlic, and season with a little salt. Spread over the base of the bun, then add the chicken followed by the top of the bun.\r\n'),
(16, 6, 'Make the marinade by mixing all of the ingredients together in a large bowl. Spoon a third of the mixture into a smaller bowl, then cover and chill until needed. Stir the chicken into the marinade and set aside for 20 mins. Can be chilled for up to two days, covered.\r\n'),
(17, 6, 'If using wooden skewers, soak them in water for 1 hr before using. Alternately thread the peppers and chicken onto the skewers until you have 6-8 kebabs. You can do this in advance if you like, and chill the kebabs until needed.\r\n'),
(18, 6, 'Heat a barbecue to medium, or until a thin layer of coals has turned grey. Cook the kebabs for 10 mins, turning occasionally, until the chicken is charred and cooked through. Serve the kebabs with the reserved yogurt sauce, warmed flatbreads, chopped tomatoes and lemon wedges on the side.\r\n'),
(19, 7, 'To make the meat sauce, heat 2 tbsp olive oil in a frying pan and cook 750g lean beef mince in two batches for about 10 mins until browned all over.'),
(20, 7, 'Finely chop 4 slices of prosciutto from a 90g pack, then stir through the meat mixture.\r\n'),
(21, 7, 'Pour over 800g passata or half our basic tomato sauce recipe and 200ml hot beef stock. Add a little grated nutmeg, then season.\r\n'),
(22, 7, 'Bring up to the boil, then simmer for 30 mins until the sauce looks rich.\r\n'),
(23, 7, 'Heat oven to 180C/fan/160C/gas 4 and lightly oil an ovenproof dish (about 30 x 20cm).\r\n'),
(24, 7, 'Spoon one third of the meat sauce into the dish, then cover with some fresh lasagne sheets from a 300g pack. Drizzle over roughly 130g ready-made or homemade white sauce.\r\n'),
(25, 7, 'Repeat until you have 3 layers of pasta. Cover with the remaining 390g white sauce, making sure you can’t see any pasta poking through.\r\n'),
(26, 7, 'Scatter 125g torn mozzarella over the top.\r\n'),
(27, 7, 'Arrange the rest of the prosciutto on top. Bake for 45 mins until the top is bubbling and lightly browned.\r\n'),
(28, 8, 'Heat the oven to 180C/160C fan/gas 4. Lightly grease and line a 20-22cm square or rectangular baking tin with a lip of at least 3cm.\r\n'),
(29, 8, 'To make the shortbread, mix 250g plain flour and 75g caster sugar in a bowl. Rub in 175g softened butter until the mixture resembles fine breadcrumbs.\r\n'),
(30, 8, 'Knead the mixture together until it forms a dough, then press into the base of the prepared tin.\r\n'),
(31, 8, 'Prick the shortbread lightly with a fork and bake for 20 minutes or until firm to the touch and very lightly browned. Leave to cool in the tin.\r\n'),
(32, 8, 'To make the caramel, place 100g butter or margarine, 100g light muscovado sugar and the can of condensed milk in a pan and heat gently until the sugar has dissolved. Continually stir with a spatula to make sure no sugar sticks to the bottom of the pan. (This can leave brown specks in the caramel but won’t affect the flavour.)\r\n'),
(33, 8, 'Turn up the heat to medium high, stirring all the time, and bring to the boil, then lower the heat back to low and stirring continuously, for about 5-10 minutes or until the mixture has thickened slightly. Pour over the shortbread and leave to cool.\r\n'),
(34, 8, 'For the topping, melt 200g plain or milk chocolate slowly in a bowl over a pan of hot water. Pour over the cold caramel and leave to set. Cut into squares or bars with a hot knife.\r\n'),
(39, 10, 'Mix the yeast with 300ml warm water in a large bowl. Leave to sit for 5 mins until the yeast is super bubbly then tip in the flour, salt and olive oil. Bring the mixture together into a soft dough. Don’t worry if it looks a little rough round the edges.\r\n'),
(40, 10, 'Tip the dough onto a lightly floured work surface. Knead for 5-10 mins until you have a soft, smooth and elastic dough. Try to knead using as little extra flour as possible, just enough so that the dough doesn’t stick – this will keep the pittas light and airy. Once kneaded, place in a lightly oiled bowl, cover with a tea towel and leave to double in size, approximately 1 hour.\r\n'),
(41, 10, 'Heat oven as high as it will go (ideally 250C/230C fan/gas 9) and put a large baking tray on the middle shelf of the oven to get searingly hot. Divide the dough into eight balls then flatten each into a disc with the palm of your hand. On a lightly floured surface, roll each disc into an oval, around 20cm long, 15cm wide and 3-5mm thick.\r\n'),
(42, 10, 'Carefully remove the hot tray from the oven. Dust with flour then place your pittas directly onto it – you may have to do this in batches. Return swiftly to the oven and bake for 4-5 mins, or until the pittas have puffed up and are a pale golden colour. Wrap each hot pitta in a clean tea towel once it\'s baked to keep it soft while the others cook.\r\n'),
(43, 11, 'Heat grill to high. Drizzle a little of the oil on your tomatoes and season well. Lay the tomatoes on a baking tray lined with foil and place under the grill. Cook for 4-5 mins, then add the bacon to the tray. Turn the bacon as necessary until it is cooked through. Turn off the grill and shut the door to keep everything warm.\r\n'),
(44, 11, 'Meanwhile, heat the remaining oil in a large, non-stick frying pan over a high heat. Season your steak well and, when the pan is very hot, fry for 3-4 mins each side for medium-rare, then leave it to rest until you are ready to eat.\r\n'),
(45, 11, 'While the steak is resting, throw the mushrooms into the still-hot pan, fry for 2-3 mins until browned, then move to one side of the pan. Add the spinach to the other side of the pan and cook until wilted. Put a saucepan of water on to boil.\r\n'),
(46, 11, 'Crack the egg into the boiling water, then reduce the heat until the water is gently simmering. Poach the egg for 3-4 mins or until the white has set but the yolk is still runny. Carefully lift it out with a slotted spoon and drain on kitchen paper. Serve everything together and top with the poached egg.\r\n'),
(47, 12, 'Spread the cream cheese over both halves of the toasted bagels. Add the salmon to the bottom halves, then top with the avocado. Squeeze over a little lemon juice and season well.\r\n'),
(48, 12, 'Heat the oil in a non-stick frying pan. When hot, crack in the eggs, season and cook for 2-3 mins until the white is set and starting to crisp up around the edges. Sit the eggs on top of each bagel base and sprinkle cayenne on each yolk. Top with the other half of the bagel and serve with lemon wedges on the side, for squeezing over.\r\n'),
(49, 13, 'Grease and line a 20cm square cake tin with baking parchment.\r\n'),
(50, 13, 'Put the dried fruit in a mixing bowl. Add the seeds, oats and cereal, and mix well.\r\n'),
(51, 13, 'Put the butter, sugar and golden syrup in the saucepan. Cook gently on the hob, stirring with the spatula, until the butter and sugar are melted.\r\n'),
(52, 13, 'Remove from the heat and pour the dry ingredients into the saucepan. Mix well until all the ingredients are coated with the syrup mix.\r\n'),
(53, 13, 'Fill the baking tin with the mixture. Use the spatula to press the mix down evenly. Bake at 160C/140C fan/gas 3 for 20 mins, then leave to cool completely before cutting into squares or fingers. Store in an airtight tin for up to 3 days – if they last that long!\r\n'),
(54, 14, 'Heat oven to 180C/160C fan/gas 4. Line a 12-hole muffin tray with 12 large muffin cases. In a jug, mix the eggs, yogurt, oil, apple sauce, banana, honey and vanilla. Tip the remaining ingredients, except the seeds, into a large bowl, add a pinch of salt and mix to combine.\r\n'),
(55, 14, 'Pour the wet ingredients into the dry, mix briefly until you have a smooth batter, don’t over mix as this will make the muffins heavy. Spoon the batter between the cases. Sprinkle the muffins with the extra oats and the seeds. Bake for 25-30 mins until golden and well risen, and a skewer inserted to the centre of a muffin comes out clean. Remove from the oven, transfer to a wire rack and leave to cool. Store in a sealed container for up to 3 days.\r\n'),
(133, 58, 'Heat the oven to 180C/160C fan/gas 4. Line the base of a 20cm springform tin by putting a square piece of parchment paper or foil on top of the tin base and then clipping the side on so the paper or foil is trapped and any excess sticks out of the bottom.\r\n'),
(134, 58, 'For the crust, melt 85g butter in a medium pan. Stir in the darker biscuit crumbs so the mixture is evenly damp. Press the mixture into the bottom of the pan. Melt the remaining butter and stir in the digestive crumbs as before. Make a layer on top of the first, tamp everything down firmly and bake for 10 minutes. Cool while preparing the filling.\r\n'),
(135, 58, 'Increase the oven temperature to fan 220C/200C fan/gas 7. Whisk the soft cheese with the caster sugar, plain flour and a pinch of salt, and vanilla extract. Whisk in the eggs and soured cream but don\'t over-beat. The batter should be smooth and and very thick. Divide the batter equally between 6 bowls and colour each one using purple, blue, green, yellow, orange and red.\r\n'),
(136, 58, 'Brush the sides of the tin with melted butter and put on a baking sheet. Spoon in the filling, starting with red and then orange, yellow etc. The mixture should be thick enough to spoon and spread each layer carefully on top of the other. Bake for 10 minutes.\r\n'),
(137, 58, 'Reduce oven temperature to 110C/90C fan/gas ¼ and bake for 35-40 minutes more. If you gently shake the tin, the filling should have a very slight wobble in the centre, if it looks liquid, cook for a little longer and check again. Turn off the oven and cool with the door very slightly ajar. Chill the cooled cheesecake until you want to serve it. Decorate just before serving.\r\n'),
(138, 58, 'To serve whip the cream until it is thick enough to pipe. Spoon in the cream and pipe blobs or rosettes on top of the cheesecake. For rainbow rosettes, using a paint brush make some rainbow stripes of food colour down the inside of a piping bag fitted with a nozzle before spooning in the cream.\r\n'),
(139, 59, 'Pour most of the coconut milk into a saucepan, reserving a splash in a small bowl for later. Add the sugar, cocoa, chocolate, sea salt flakes and vanilla to the pan. Heat gently for 10 mins until the sugar has dissolved and the chocolate has melted. \r\n'),
(140, 59, 'Mix the cornflour with the reserved coconut milk until smooth. Pour into the hot milk mixture and cook for another 5-10 mins, stirring constantly, until the mixture thickens to a pourable custard consistency. Strain into a bowl then cover and leave to cool to room temperature. \r\n'),
(141, 59, 'Pour the cooled custard into an ice cream maker and churn for 20-30 mins until you have a soft-scoop ice cream. Transfer to a freezerproof sealable container and freeze for up to three months, or until ready to serve. If you don’t have an ice cream maker, pour the mixture into a wide-based plastic tub or dish. Freeze for 3 hrs, stirring every 20 mins to break up any large ice crystals, until you have a soft ice cream. Transfer to a freezerproof sealable container and freeze until ready to serve. Leave to stand for 10 mins at room temperature before scooping into bowls or cones. \r\n'),
(142, 60, 'Heat the oven to 200C/180C fan/gas 6 and line a 900g loaf tin with baking parchment. Put a flat baking sheet in the oven to get really hot.\r\n'),
(143, 60, 'Mix the flour, bicarb, salt and sugar in a large bowl until evenly distributed. Make a well in the centre and tip in the yogurt. Bring together to make a slightly sticky dough.\r\n'),
(144, 60, 'Lightly dust the dough with extra flour and form into a fat log, around the same size as the tin. Put in the tin. Dip a wooden spoon in flour and make a line along the centre. Top with a small handful of oats or seeds, if you like.\r\n'),
(145, 60, 'Bake on the hot baking sheet for 40-45 mins or until golden brown. Leave to cool in the tin then turn out onto a wire rack to cool completely before cutting into slices.\r\n'),
(146, 61, 'Tip both flours into a bowl, then add two-thirds of a tsp salt to one side of the bowl and the yeast to the other side of the bowl. Mix well.\r\n'),
(147, 61, 'Put the malt extract in a separate bowl, then pour in the olive oil and 145ml tepid water and stir until the extract dissolves. Tip into the bowl with the flour mix.\r\n'),
(148, 61, 'Bring the mixture together with your hands to make a rough dough. Tip out onto a surface lightly dusted with flour and knead for 10 mins until you have a smooth dough. Put the dough in a clean bowl, cover with a tea towel and leave to prove for at least 2 hrs until doubled in size.\r\n'),
(149, 61, 'Lightly oil a 900g loaf tin. Roll out the dough into a log shape and transfer to the loaf tin, then cover with a tea towel and leave to prove for 1 hr more, or until doubled in size. Heat oven to 220C/200C fan/gas 7.\r\n'),
(150, 61, 'Bake for 25-30 mins, or until golden brown. Turn out the loaf onto a wire rack and leave to cool.\r\n'),
(151, 62, 'Tip the flour into a bowl and mix in the yeast with the salt. Stir in the water, oil and honey. Now bring together to make a soft dough – I use my hands, but a wooden spoon or knife from the cutlery drawer is fine. Tip onto a lightly floured surface and knead for 10 mins. It is worth putting in the time to do this as it will pay off later with lovely airy bread.\r\n'),
(152, 62, 'Don’t keep adding flour, a wet dough is better than a dry one, which will bake to a tough texture, so if you don’t like the dough sticking to your hands, lightly oil them. If you are adding flavourings, knead them in gently now.\r\n'),
(153, 62, 'Turn the dough into an oiled 1kg bread tin and cover with oiled cling film (or better still, a free unused shower cap from your last hotel stay!). Put in a warm place until the bread fills the tin, it should take between 1-2 hrs.\r\n'),
(154, 62, 'Uncover and bake your bread at 200C/180C fan/gas 6 for 30-35 mins until golden. Tip out of the tin and tap the base of the loaf. It should sound hollow when fully cooked. If not cooked, put loaf back in the oven out of the tin and test again after 10 mins. Cool.\r\n'),
(155, 63, 'First, make the meatballs. Split the skins of the sausages and squeeze out the meat into a large mixing bowl.\r\n'),
(156, 63, 'Add the mince, onion, parsley, parmesan, breadcrumbs, eggs and lots of seasoning. Get your hands in and mix together really well – the more you squeeze and mash the mince, the more tender the meatballs will be.\r\n'),
(157, 63, 'Heat the oven to 220C/200C fan/gas 7. Roll the mince mixture into about 50 golf-ball-sized meatballs. Set aside any meatballs for freezing, allowing about five per portion, then spread the rest out in a large roasting tin – the meatballs will brown better if spaced out a bit.\r\n'),
(158, 63, 'Drizzle with a little oil (about 1 tsp per portion), shake to coat, then roast for 20-30 mins until browned.\r\n'),
(159, 63, 'Meanwhile, make the sauce. Heat the olive oil in a large saucepan. Add the garlic cloves and sizzle for 1 min.\r\n'),
(160, 63, 'Stir in the chopped tomatoes, red wine, if using, caster sugar, parsley and seasoning. Simmer for 15-20 mins until slightly thickened.\r\n'),
(161, 63, 'Stir in a few basil leaves, if using, spoon out any portions for freezing, then add the cooked meatballs to the pan to keep warm while you cook the spaghetti in a pan of boiling, salted water.\r\n'),
(162, 63, 'Spoon the sauce and meatballs over spaghetti, or stir them all together and serve with extra parmesan and a few basil leaves, if you like.\r\n'),
(163, 64, 'Heat the oven to 200C/180C fan/gas 6. Tip all the ingredients except the oil into a food processor with a large pinch of salt and lots of ground pepper. Pulse until everything is combined and chopped together. You can also just squish everything together in a bowl but this will give you a looser finish.\r\n'),
(164, 64, 'Oil a large sheet of foil, tip the meat mix in the middle and mould to a very thick sausage, roughly the shape of an aubergine. Roll up the foil tightly, twisting up the ends to create a Christmas cracker shape.\r\n'),
(165, 64, 'Lay on a shallow roasting tin and roast in the oven for 35-40 mins, turning occasionally, or until a digital cooking thermometer reads 75C when pierced in the middle. Leave the kebab to cool a little, then unwrap the foil. Place back on the tray and brown under the grill or with a blowtorch.\r\n'),
(166, 64, 'Place on a board and carve into thin slices. For full doner mode, you can hold the kebab up with a roasting fork or metal skewer and carve. Serve with warm pitta bread and any of the other accompaniments, including our chilli sauce and garlic yogurt sauce.\r\n'),
(167, 65, 'To make the spice mix, combine all the ingredients. Whisk the milk with the vinegar, egg, ½ tsp salt and 1 tbsp spice mix in a bowl or deep plastic container to make the buttermilk marinade. Open the chicken thighs and put between two pieces of baking parchment, then flatten using a rolling pin. Transfer to the marinade, then cover and chill for 4 hrs, or overnight.\r\n'),
(168, 65, 'Make the coating by combining the flours and turmeric with most of the remaining spice mix (reserving 1 tsp) and a generous pinch of salt. Drain the chicken thighs, reserving the marinade. One by one, dredge each thigh in the flour, then dip in the reserved marinade, then dredge again in the flour, pressing on as much as you can to coat. Transfer the coated thighs to a large plate.\r\n'),
(169, 65, 'Heat a 10cm depth of oil in a shallow saucepan or deep-fat fryer until it reaches 175C. Lower two or three of the thighs in at a time and fry undisturbed for 3 mins, making sure the temperature doesn’t drop below 160C (it should stay at about 170C). Flip the thighs, then fry for another 2-3 mins until deeply golden and crisp on both sides. Lift the chicken out and transfer to a tray lined with kitchen paper to drain, then put on a rack and keep warm in a low oven while you fry the remaining thighs.\r\n'),
(170, 65, 'When all the chicken has been fried, combine the reserved spice mix with 1 tbsp flaky sea salt and sprinkle over the chicken to serve.\r\n'),
(171, 66, 'Put everything for the shortbread in a food processor with a pinch of salt and pulse until the mixture comes together to form a dough. If it won’t come together, take it out of the processor and bring it together with your hands. Tip onto a lightly floured work surface and shape into a log about 5cm in diameter. Wrap in cling film and chill for 1 hr.\r\n'),
(172, 66, 'Heat oven to 140C/120C fan/gas 2. Line two large baking sheets with baking parchment. Cut the log into about 32 rounds 6mm thick and line them up on the sheets. Bake for 22-25 mins. Leave to cool a little, then carefully remove and put on a wire rack to cool completely.\r\n'),
(173, 66, 'To make the buttercream, blitz all the ingredients in a food mixer or beat with an electric whisk, adding enough of the milk to make a soft mixture. Sandwich the shortbread together with the buttercream.\r\n'),
(174, 67, 'Whisk the chipotle paste with the egg and some seasoning in a jug. Heat the oil in a large frying pan, add the kale and tomatoes.\r\n'),
(175, 67, 'Cook until the kale is wilted and the tomatoes have softened, then push everything to the side of the pan. Pour the beaten egg into the cleared half of the pan and scramble. Layer everything into the centre of your wrap, topping with the avocado, then wrap up and eat immediately.'),
(176, 68, 'Heat the milk and butter in a small pan until the butter has melted. Allow to cool slightly – the milk should be warm, not hot. Put the flour in a large mixing bowl with a pinch of salt to one side of'),
(177, 68, 'Gradually pour the warm milk into the dry ingredients, mixing with your hands until you have a relatively sticky dough. You may not need all of the milk. Add in the egg and continue to work until comb'),
(178, 68, 'Lightly dust a surface with flour and tip out the dough. It will be quite wet – the more you knead it, the easier it will become. Knead for around 10 mins until you have a smooth dough. Put in a light'),
(179, 68, 'To make the filling, mix the melted butter, sugar and cinnamon together until you get a smooth paste. Set aside.\r\n'),
(180, 68, 'Roll out the dough on a lightly floured surface to around a 30 x 40cm rectangle. Spread over the filling using a palette knife until the dough is completely covered. \r\n'),
(181, 68, 'Fold in half widthways and cut into 16-18 strips down the shortest side. Twist both ends of each strip in opposite directions until a spiral shape forms. Holding one end in your hand, wrap the rest of'),
(182, 68, 'Lay on two lined baking trays spaced 5cm apart. Leave to prove for 30-45 mins until risen slightly. Heat the oven to 190C/170C fan/gas 5. Brush the tops of the buns with a little egg and bake for 18-2'),
(183, 68, 'For the coating, mix together the sugar and cinnamon. Whilst still warm, toss the buns in the sugar and eat straight away. \r\n'),
(184, 69, 'Tip the flour into a large mixing bowl. Stir through the yeast, sugar and salt. Make a well in the middle and gradually pour in the water. Swiftly mix together, then turn out onto a lightly floured su'),
(185, 69, 'Once the dough has risen, tip it onto a worktop and knead it three times. Shape the dough into an oval as best you can. Lightly flour a baking sheet and sit the loaf on it. Cover loosely with lightly '),
(186, 69, 'Heat oven to 200C/180C fan/gas 6. Whisk together all of the topping ingredients in a small bowl until you get a spreadable paste, adding more water and/or flour if necessary, then set aside to rest fo'),
(199, 73, 'Heat oven to 180C/160C fan/gas 4. Butter and line three 18cm (or two 20cm) cake tins. Beat the butter and sugar together until light and fluffy. Add the eggs, beating them in one at a time. Fold in th'),
(200, 73, 'Divide the cake mixture between the tins and level the tops of the batter. Bake for 25-30 mins or until a skewer inserted into the middle comes out clean. Leave to cool for 10 mins in the tin, then ti'),
(201, 73, 'To make the angel frosting, put the sugar, vanilla and liquid glucose in a pan with 125ml water. Bring to the boil and cook until the sugar has melted – the syrup turns clear and the mixture hits 130C'),
(202, 73, 'Spread two of the sponges with jam and some of the icing mixture, then sandwich the cakes together with the plain one on top. Use a little of the frosting to ice the whole cake (don’t worry about crum'),
(218, 81, 'Using an electric whisk, whisk the egg whites in a bowl until stiff peaks form. With the beaters still running, slowly whisk in the sugar. Continue whisking until the egg whites are stiff and glossy.\r\n'),
(219, 81, 'Whisk the cream until soft peaks form. Fold the cream, yolks and your choice of flavour into the egg whites until combined. Freeze in a plastic container for at least two hours. Serve in cones topped '),
(224, 83, 'Put the ingredients in a blender and blitz until smooth. Pour into a glass and enjoy!\r\n'),
(227, 85, 'Whizz all the ingredients for the marinade in a blender to form a thick paste. It shouldn\'t be too runny, similar to the consistency of sweet chilli sauce. Taste and adjust seasoning if needed. Will keep in an airtight container in the fridge for up to three weeks.\r\n'),
(228, 85, 'Slit the chicken skin with a sharp knife, then put into a container. Pour over the jerk marinade, making sure the chicken is completely covered. You may not need all the marinade. Cover the chicken an'),
(229, 85, 'Heat the oven to 220C/200C fan/gas 7. Put the chicken in an ovenproof dish, cover with foil and cook for 30-45 mins. Remove the foil and baste the chicken with the juices from the dish, then cook for a further 10 mins. The skin should start to crisp up. Check the meat is cooked by cutting into the deepest part of the chicken. If the juices run out red, return to the oven for 10 mins more, or until the juices run clear. Serve with rice & peas or any of your favourite side dishes.\r\n'),
(233, 87, 'Tear 500g white or wholemeal bread into a large mixing bowl and add 500g mixed dried fruit, 85g mixed peel and 1 ½ tbsp mixed spice.\r\n'),
(234, 87, 'Pour in 600ml milk, then stir or scrunch through your fingers to mix everything well and completely break up the bread.\r\n'),
(235, 87, 'Add 2 beaten large eggs, 140g light muscovado sugar and zest of 1 lemon, if using. Stir well, then set aside for 15 mins to soak.\r\n'),
(236, 87, 'Heat oven to 180C/160C fan/gas 4. Butter and line the base of a 20cm non-stick square cake tin (not one with a loose base).\r\n'),
(237, 87, 'Stir the melted butter into the pudding mixture, tip into the tin, then scatter with demerara.\r\n'),
(238, 87, 'Bake for 1½ hrs until firm and golden, covering with foil if it starts to brown too much. Turn out of the tin and strip off the paper. Cut into squares and serve warm.\r\n'),
(239, 88, 'In a large bowl mix the yogurt, paste, half the chopped coriander, half the lime juice and all the the zest. Tip in the chicken, stir to coat and leave in the fridge to marinate for 30 mins if you have time.\r\n'),
(240, 88, 'Thread the chicken onto 8 skewers and cook in batches on a hot griddle pan, frying pan or barbecue for about 10-12 mins, turning until cooked though.\r\n'),
(241, 88, 'Meanwhile, mix the salad ingredients with the remaining lime juice and coriander in a bowl and season. Sprinkle with extra coriander and serve alongside the skewers with warmed wholemeal chapatis.\r\n'),
(242, 89, 'Sift the flours into a bowl or wide jug and tip any bits in the sieve back into the bowl. Add the egg yolks and a splash of milk then stir to a thick paste. Add the remaining milk a little at a time so you don’t make lumps in the batter.\r\n'),
(243, 89, 'Whisk the egg whites until they stand up in stiff peaks, then fold them carefully into the batter – try not to squash out all the air.\r\n'),
(244, 89, 'Heat a non-stick pan over a medium heat and pour in enough batter to make a pancake about 10 cm across. Cook for just under a minute until bubbles begin to pop on the surface and the edges are looking'),
(245, 90, 'Cut open the tea bags and tip the contents into a jug. Pour over 100ml boiling water, brew for a few mins, then scrape this mixture into a muslin cloth and tie to create a giant tea bag. Pour 300ml double cream into a pan and add the muslin tea bag. Bring to a simmer, then immediately remove from the heat and put in the fridge to chill and infuse.\r\n'),
(246, 90, 'Meanwhile, make the base. Blitz the biscuits to crumbs, then pour in the melted butter and pulse again to combine. Tip into a lined 20 x 30cm brownie tin, preferably loose bottomed. Spread and press d'),
(247, 90, 'To make the cheesecake, use an electric whisk to beat the cheeses, icing sugar, vanilla and a pinch of salt until thick and smooth. Remove the giant tea bag from the double cream, squeeze gently and d'),
(248, 90, 'Whisk the remaining 100ml double cream (which has not been infused) until it holds soft peaks, then fold gently into the cheesecake mixture. Tip onto the top of the base, spread with a spatula and smo'),
(249, 90, 'To make the sauce, melt the butter in a pan over a medium heat, cook, whisking constantly, for 2-3 mins until it’s browning and smelling really nutty. Take off the heat, add the sugar and whisk, then '),
(250, 90, 'To serve, drizzle over the warm sauce, and top with some crushed biscuits. Use a warmed knife to slice into 12 bars. Leftovers will keep in the fridge for up to three days.'),
(268, 93, 'Put the flour, salt and sugar in a mixing bowl. Measure 300ml cold water into a jug, add the yeast and stir. Make a well in the flour and pour in the liquid. Mix, then knead on your work surface for 10 mins. Shape into a ball, put in a lightly oiled bowl, cover and chill for at least 2 hrs.\r\n'),
(269, 93, 'Put the butter between 2 sheets of baking parchment. Using a rolling pin, bash and roll it into a rectangle about 20 x 15cm. Leave wrapped in the baking parchment and chill.\r\n'),
(270, 93, 'Transfer the chilled dough to a floured surface and roll into a 40 x 20cm rectangle. Place the unwrapped slab of butter in the centre of the dough, so that it covers the middle third.\r\n'),
(271, 93, 'Fold one side of the dough up and halfway over the butter.\r\n'),
(272, 93, 'Fold the other side of the dough up and over the butter in the same way, so that the two edges of the dough meet in the centre of the butter.\r\n'),
(273, 93, 'Fold the dough in half so that the point where the ends of the dough meet becomes the seam. Wrap in cling film and chill for 30 mins.\r\n'),
(274, 93, 'Repeat the rolling, folding and chilling process (steps 3-6) twice more in exactly the same way – rolling the pastry while it’s still folded – without adding more butter. Wrap and chill overnight.\r\n'),
(275, 93, 'The next day, roll the dough out on a floured surface into a large rectangle, measuring about 60 x 30cm. Using a sharp knife or pizza cutter, trim the edges to neaten.\r\n'),
(276, 93, 'Cut the dough in half lengthways so that you have 2 long strips, then cut each strip into 6 or 7 triangles with 2 equal sides.\r\n'),
(277, 93, 'Take each triangle in turn and pull the two corners at the base to stretch and widen it.\r\n'),
(278, 93, 'Starting at the base of each triangle, begin to gently roll into a croissant, being careful not to crush the dough.\r\n'),
(279, 93, 'Continue rolling, making sure the tip of each triangle ends up tucked under the croissant to hold in place. If adding any fillings (see tips, below), place across the widest part of the triangle befor'),
(280, 93, 'Bend the ends of the croissants inwards, then transfer to baking trays lined with baking parchment, spaced well apart. Cover with lightly oiled cling film and leave to rise for 2 hrs, or until doubled'),
(281, 93, 'Heat oven to 200C/180C fan/gas 6. Mix the beaten egg with a pinch of salt and use to generously glaze the croissants. Bake for 15-18 mins until risen and golden brown, then cool on wire racks.\r\n'),
(282, 94, 'Heat the oven to 160C/140C fan/gas 3. Line and butter two 18cm sandwich tins. Add the sugar and butter to a bowl and whisk until very fluffy and pale.\r\n'),
(283, 94, 'Whisk the eggs in a mug with a fork, then add them gradually to the mixture with 1 tbsp of flour each time. (Make sure you don\'t use all the flour.) When the eggs have been fully combined into the mix'),
(284, 94, 'Add the dissolved coffee to the mixture, still folding. Divide into the sandwich tins and cook for 25-30 min until risen and firm and a skewer inserted into the middle comes out clean. Leave to cool i'),
(285, 94, 'Meanwhile, make the icing by beating the icing sugar with the butter until light and fluffy, then add the dissolved coffee. Whisk, then cover and set aside until ready to ice the cake.\r\n'),
(286, 94, 'Spread half the icing on the bottom of one sponge and spread the strawberry jam on the bottom of the other, if using. Sandwich together, then spread the remaining icing on top. Decorate with walnuts o'),
(287, 95, 'Load the back of a teaspoon with a little of the chocolate spread and spread it in a long line from the bottom of the inside of the glass to the top. Put the rest of the chocolate spread into a bowl in the microwave or in a small saucepan over a low heat. Warm through for a few seconds just until runny and set aside.\r\n'),
(288, 95, 'Put the milk and chocolate ice cream into a blender. Whizz everything up until smooth then pour into your prepared glass.\r\n'),
(289, 95, 'Top with a layer of the marshmallows and a spoonful of whipped cream. Decorate with a drizzle of the warmed chocolate spread and a few toasted hazelnuts. Serve immediately with a straw.\r\n'),
(290, 96, 'Heat oven to 180C/160C fan/gas 4. Mix the flour, salt and yeast in a large bowl. In a separate bowl, whisk together the buttermilk, eggs and oil. Mix the wet ingredients into the dry to make a sticky dough.\r\n'),
(291, 96, 'Grease a 900g loaf tin, or flour a baking sheet. With oiled hands, shape the dough into a sausage shape for a loaf or a ball for a cob. If making a loaf, place the dough in the tin. For a cob, place i'),
(292, 96, 'Bake for 50-60 mins until golden and well risen. Turn out onto a wire rack and leave to cool for at least 20 mins before cutting.\r\n'),
(293, 97, 'Put the flour in a bowl of a stand mixer with a dough hook. Add the salt to one side and sugar to the other. Pour in the yeast to the side with the sugar. Mix each side into the flour with your hands, then mix it all together with the dough hook. \r\n'),
(294, 97, 'Heat the milk until warm to the touch, but not hot. Mix into the flour mix until combined. With the dough hook on medium, gradually add the eggs and mix for 10 mins. \r\n'),
(295, 97, 'Gradually add the softened butter, one or two cubes at a time, until combined. This will take 5-8 mins. Scrape down the sides, the dough will be very soft. \r\n'),
(296, 97, 'Scrape the dough into a large bowl, cover with a tea towel and leave for 1 hr 30 mins-2 hrs until doubled in size and well-risen. Once risen, put in the fridge for 1 hr.\r\n'),
(297, 97, 'Line the bottom and sides of a 900g loaf tin with baking parchment. Portion the dough into seven equal pieces (the easiest way to do this accurately is to weigh it). Lightly dust a work surface with f'),
(298, 97, 'Put the balls into the tin, four on one side and three in the gaps on the other side. Cover with a tea towel and leave to prove for 30-35 mins until almost doubled in size. Heat the oven to 180C/160C '),
(305, 99, 'Trim all the rounded edges off the potatoes to make a rectangular block, then cut this into thick batons (save any offcuts to make mash). Drop into a pan of cold salted water with the vinegar and bring to the boil. Simmer for 6-8 mins until the potatoes are just cooked and tender – test with the tip of a knife. Drain carefully, trying not to break any of the chips, and leave to cool completely. Can be prepared up to two days ahead and chilled until needed.\r\n'),
(306, 99, 'Heat the oven to 220C/200C fan/gas 9. Pour the oil into a sturdy, rimmed baking tray or shallow roasting tin and heat in the oven. Mix the flours with the baking powder, cayenne and some salt in a sha'),
(307, 99, 'Carefully remove the pan from the oven – the oil should be shimmering – and lay the chips in a single layer in the pan. Use a thin, flexible spatula to gently turn the chips so they are all coated, then roast for 20 mins. Turn the chips again, then roast for another 10 minutes. Turn one final time, then cook for a futher 10 minutes until crisp and deep golden all over. Drain the chips onto kitchen paper and serve straight away.'),
(308, 100, 'Slash the flesh of the chicken pieces roughly 1cm apart. Put the chicken and all the first marinade ingredients in a bowl and mix well. Leave in the fridge for at least 2 hrs, and up to 4 hrs.\r\n'),
(309, 100, 'Blend all the ingredients for the second marinade together. Remove the chicken from the first marinade and put it in a clean bowl. Add the second marinade and rub it into the chicken, then chill in the fridge for at least 4 hrs.\r\n'),
(310, 100, 'Light a barbecue with a lid, load the coals on one side and get them to a point where they are white-hot, then let them cool a little. Don’t put the chicken directly over the heat, otherwise the spiceLight a barbecue with a lid, load the coals on one side and get them to a point where they are white-hot, then let them cool a little. Don’t put the chicken directly over the heat, otherwise the spices will burn. Barbecue on a medium heat with the lid on for 10-15 mins or until cooked through, turning them once. (Or heat oven to 200C/180C fan/gas 6 and cook the chicken on a baking tray for 30 mins or until cooked through.) Sprinkle with mint and spoon over some green chutney, if you like (see our recipe). Serve with lime wedges for squeezing over.'),
(344, 101, 'Using a sharp knife, slash the chicken thighs 3 times, going all the way down to the bone – this allows the marinade to get in, and means quicker and more even cooking. If you have the time, toss with the lemon juice and 1 tsp salt in a bowl and leave to marinate for 1 hr.\r\n'),
(345, 101, 'Blend together all the marinade ingredients until smooth (add the extra lemon and salt if you skipped the first marinating stage). Pour over the chicken, cover and leave to marinate in the fridge for at least 3-4 hrs (overnight is best).\r\n'),
(346, 101, 'Heat the barbecue to a medium-high heat, or heat your grill to its highest setting and line a baking tray with foil. Place the chicken on the barbecue and cook, turning often, for 20-25 mins until charred and cooked through. Or place the chicken on the foil-lined tray and grill for the same amount of time, or until charred on both sides and cooked through. Top the chicken with the butter and leave to melt, then serve with lemon wedges.\r\n'),
(359, 115, 'Grind the garlic, ginger, orange zest and spring onions to a paste in a food processor. Add the honey, orange juice, soy sauce and oil, then blend again. Pour the mixture over the cubed chicken and leave to marinate for at least 1 hr, but preferably overnight. Toss in the mushrooms for the last half an hour so they take on some of the flavour, too.'),
(360, 115, 'Thread the chicken, tomatoes, mushrooms and peppers onto 20 wooden skewers, then cook on a griddle pan for 7-8 mins each side or until the chicken is thoroughly cooked and golden brown. Turn the kebabs frequently and baste with the marinade from time to time until evenly cooked. Arrange on a platter, scatter with chopped spring onion and eat with your fingers.'),
(361, 116, 'Whisk together the eggs, milk, cream, vanilla and cinnamon. Lay the brioche slices in a single layer in a shallow dish and pour the egg mixture over them. Allow to soak for 2-3 mins, then carefully tu'),
(362, 116, 'Heat 1 tbsp of the vegetable oil and butter in a non-stick frying pan over a medium heat until foaming. Carefully lift 2 slices of the soaked brioche out of the dish and add to the frying pan. Fry for 3 mins on each side, until golden and crisp, then place on a wire rack over a baking tray in a warm oven while you repeat with the remaining slices.\r\n\r\n'),
(363, 116, 'Serve dusted in icing sugar and scattered with fresh berries, if you like.\r\n\r\n'),
(364, 117, 'Tip the beef and pork into a large bowl. Mix and season generously with salt. Set aside for at least 30 mins, or for up to 1 hr. Meanwhile, put the bread in a bowl with the milk and leave to soak.\r\n\r\n'),
(365, 117, 'Tip the soaked bread into the bowl with the meat and add all the remaining meatball ingredients except for the mozzarella. Season with plenty of pepper, then scrunch the mixture together with your hands until combined.\r\n\r\n'),
(366, 117, 'Roughly divide the meatball mixture into 18 portions. Use your hands to flatten one portion, then gently wrap it around a piece of the mozzarella and roll into a ball. Repeat with the remaining portions. Chill the meatballs in the fridge for 1 hr before cooking. Can be prepared up to two days ahead and stored in the fridge.\r\n\r\n'),
(367, 117, 'Heat 3 tbsp of the oil in a large frying pan or casserole dish. Fry the meatballs in batches, browning them on all sides, then transfer to a plate and set aside. Pour the remaining oil into the pan and heat for 1 min, then fry the sliced garlic for a few seconds. Tip in the sugar, vinegar and wine (if using) and bubble for 1 min. Add the tomatoes, then season and cook over a medium heat for 10 mins. Tip in the meatballs and gently stir to ensure they’re fully coated in the sauce. Cover the pan and simmer on a low heat for about 20 mins, spooning the sauce over the meatballs occasionally.\r\n\r\n'),
(368, 117, 'Remove the pan from the heat and set aside, then cook the spaghetti. To serve, divide the spaghetti between bowls, top with three warm meatballs each, spoon over the sauce and scatter with the remaining parmesan.\r\n\r\n'),
(369, 118, 'Lightly whip the cream just so it’s very slightly thickened, then set aside. \r\n'),
(370, 118, 'Pour the hot coffee into a mug or heatproof glass, then add the whiskey and sugar. Stir until the sugar has dissolved. Gently float the cream on the top and sprinkle the nutmeg over the cream. Serve hot. \r\n'),
(391, 123, 'Put the lamb and all the first marinade ingredients in a bowl and mix well. Chill for at least 2 hrs, and up to 4 hrs.\r\n'),
(392, 123, 'Blend all the second marinade ingredients together. Remove the lamb from the first marinade and put it in a clean bowl. Add the second marinade and rub it into the lamb, then chill for a further 4 hrs, or overnight.\r\n'),
(393, 123, 'Light a barbecue with a lid, then barbecue the chops on a high heat until cooked to medium (around 8 mins), making sure the meat isn’t directly on the flame to avoid burning the spices. The key is to keep the lid on so the temperature is consistent. Or cook in the oven on a baking tray for 12 mins, and finish off under the grill for 2 mins to crisp them up. Serve with lime wedges for squeezing over and green chutney on the side\r\n'),
(396, 124, 'Make the dough by tipping the flour, yeast and salt into a large bowl and making a well in the middle. Pour in most of the water and use your fingers or a wooden spoon to mix the flour and water together until combined to a slightly wet, pillowy, workable dough - add a splash more water if necessary. Tip the dough onto a lightly floured surface and knead for at least 10 mins until smooth and elastic. This can also be done in a tabletop mixer with a dough hook. Place the dough in a clean oiled bowl, cover with cling film and leave to rise until doubled in size.\r\n'),
(397, 124, 'Heat oven to 220C/fan 200C/gas 7. Knock back the dough by tipping it back onto a floured surface and pushing the air out. Mould the dough into a rugby ball shape that will fit a 900g loaf tin and place in the tin. Cover with a clean tea towel and leave to prove for 30 mins. Dust the top of the loaf with a little more flour and slash the top with a sharp knife if you want. Bake the bread for 15 mins, then reduce the heat to 190C/fan 170C/gas 5 and continue to bake for 30 mins until the loaf sounds hollow when removed from the tin and tapped on the base. Leave the bread on a wire rack to cool completely. The loaf will stay fresh in an airtight container for 3 days or can be frozen for 1 month.\r\n'),
(398, 125, 'In a large bowl, combine all the ingredients for the marinade, along with a good few pinches of salt and some pepper. Add the chicken thighs and mix everything together. Cover and chill overnight.\r\n'),
(399, 125, 'Light a lidded barbecue, then let the flames die down. Once the coals have turned ashen, mound them up on one side. Thread the chicken thighs onto 2 metal skewers – so that both skewers go through each piece of meat – packing the thighs down so that they are really compact. Place the chicken kebab on the side without any coals underneath. Pop the lid down and cook for 45-55 mins, turning regularly, or until cooked through – prise the chicken pieces apart in the centre to check this. Cover the chicken with foil and leave to rest for 20 mins before slicing. (If cooking in the oven, heat to 200C/180C fan/gas 6. Rest a wire rack over a roasting tin and place the chicken on top. Cook for 45-55 mins or until cooked through.)\r\n'),
(400, 125, 'Slice strips of chicken from the kebab and stuff into pittas, warmed on the barbecue. Serve with Dill yogurt sauce, tomato, red onion & cucumber salad, and crunchy lettuce.\r\n'),
(577, 86, 'Beat the butter and sugar together with an optional pinch of sea salt in a bowl until light and fluffy, then beat in the eggs one at a time. Sift over the flour and cocoa powder and beat into the butter mix, then fold through the chocolate chips. The mix can be made up to 2 days ahead and chilled or frozen for a month, or used straight away.\r\n'),
(578, 86, 'To bake, heat oven to 190C/170C fan/gas 5. If the mix is at room temperature, place evenly spaced spoonfuls on parchment-lined baking sheets, allowing 2 tbsp for each cookie. If the mix is fridge cold'),
(579, 86, 'As an optional extra, the biscuits can be dipped in chocolate. To do this, melt your chosen type of chocolate in a bowl over a pan of simmering water or in the microwave. Leave to cool a little, then '),
(595, 122, 'Mix together 200g self-raising flour, 1 tsp baking powder and a pinch of salt in a large bowl.\r\n'),
(596, 122, 'Beat 1 egg with 300ml milk, make a well in the centre of the dry ingredients and whisk in the milk to make a thick smooth batter.\r\n'),
(597, 122, 'Beat in a knob of melted butter, and gently stir in half of the 150g pack of blueberries.\r\n'),
(598, 122, 'Heat a teaspoon of sunflower oil or small knob of butter in a large non-stick frying pan.\r\n'),
(599, 122, 'Drop a large tablespoonful of the batter per pancake into the pan to make pancakes about 7.5cm across. Make three or four pancakes at a time.\r\n'),
(600, 122, 'Cook for about 3 minutes over a medium heat until small bubbles appear on the surface of each pancake, then turn and cook another 2-3 minutes until golden.\r\n'),
(601, 122, 'Cover with kitchen paper to keep warm while you use up the rest of the batter.\r\n'),
(606, 72, 'Heat oven to 180C/fan 160C/gas 4. Line the base of a 25cm springform tin with baking parchment. Mix the melted butter and biscuit crumbs until well blended, then press firmly onto the base of the tin.');
INSERT INTO `PrepMethod` (`prep_id`, `recipe_id`, `method`) VALUES
(607, 72, 'Turn oven temperature up to 240C/fan 220C/gas 9. Beat the cream cheese and sugar with an electric whisk until smooth and creamy, then whisk in the cocoa, vanilla, Tia Maria, eggs, soured cream and half the melted chocolate. Stir enough milk into the remaining chocolate to make a sauce consistency, then set aside until ready to decorate the cheesecake.\r\n'),
(608, 72, 'Put a little melted butter on some kitchen paper and use it to butter the sides of the cake tin. Pour in the cheese mixture, then smooth the top. Bake for 10 mins, then turn the heat down to 110C/fan 90C/gas ¼ for 25-30 mins. The filling should be set, but with a wobble in the centre. Turn off the oven, open the door a crack, then leave the cheesecake to cool in the oven for 2 hrs. Chill until ready to serve.\r\n'),
(609, 72, 'To decorate the cheesecake, carefully remove it from the tin and strip the lining paper from the base. Lightly whip the cream until it just holds its shape, then swirl it on top and drizzle with the reserved chocolate sauce, rippling the sauce through the cream with the end of a spoon. Serve as is or pile with chocolate curls. To make the chocolate curls: run a swivel potato peeler firmly down the smooth back of a slab of chocolate so that curls of chocolate flake away from the bar. \r\n'),
(612, 84, 'Cut a piece of sponge about 5mm thick to fit a 1lb 16 x 10cm loaf tin and trim off any dark edges (off-cuts are a cook\'s perk). Line the loaf tin with a double layer of strong cling film and push the sponge into the base. If the madeira cake is smaller than the tin, patch any gaps – you won’t see them when the cake is finished.\r\n'),
(613, 84, 'Spoon a layer of mango sorbet into the tin using three-quarters of the tub, flatten the surface using the back of a spoon and freeze for 10 mins. Repeat using the vanilla ice cream, then add another l'),
(636, 137, 'In a medium bowl, mix all the marinade ingredients with some seasoning. Chop the chicken into bite-sized pieces and toss with the marinade. Cover and chill in the fridge for 1 hr or overnight.\r\n\r\n'),
(637, 137, 'In a large, heavy saucepan, heat the butter, ghee or oil. Add the onion, garlic, green chilli, ginger and some seasoning. Fry on a medium heat for 10 mins or until soft.\r\n\r\n'),
(638, 137, 'Add the spices with the tomato purée, cook for a further 2 mins until fragrant, then add the stock and marinated chicken. Tip everything into the slow cooker, then cook for 6-7 hrs on Low until the chicken is tender.\r\n\r\n'),
(639, 137, 'Sprinkle with the toasted almonds. Serve with rice, naan bread, chutney, coriander and lime wedges, if you like.\r\n\r\n'),
(649, 119, 'Make a 200ml cup of black coffee following pack instructions, then allow the coffee to go completely cold. Pour into a blender with the milk along with 2 or 3 handfuls of ice and maple syrup, if using, then blend until smooth and foamy.\r\n'),
(650, 119, 'Pour into a chilled tall glass and serve.\r\n'),
(652, 82, 'To make the cones, slowly melt the chocolate in a microwave or a bowl set over a pan of simmering water. Pour the sprinkles into a bowl. Dip the rim of a cone into the chocolate, shake off any excess, then dip it into the sprinkles. Leave upright to dry and repeat with the rest.\r\n'),
(653, 82, 'Make the chocolate sauce by heating and stirring the chocolate bars and cream together in a pan over a low heat. Keep warm and transfer to a squeezy bottle when needed.\r\n'),
(654, 82, 'To make the strawberry sauce, tip the berries into a pan with the sugar, vanilla, lemon juice and a splash of water. Heat gently until the strawberries start to release their juices. Mash or blend the'),
(655, 82, 'Arrange the ice cream tubs (lids off ) in a large bowl or bucket filled with ice. Arrange the cones, squeezy bottles and assorted sprinkles, sweets and berries in bowls alongside, so that the kids can'),
(703, 145, 'Put the oil in a large saucepan with a tight-fitting lid over a medium heat. Toss the popcorn kernels in the oil to coat. Put the lid on, and keep over a medium heat until you hear the first popcorn pop, then turn the heat to medium-low. When you begin to hear lots of popping, give the pan a shake. Continue to shake frequently until the popping stops. Turn off the heat and leave in the pan.\r\n'),
(704, 145, 'Line a large baking tray with baking parchment. Put the sugar and 60ml water into a medium heavy-based saucepan and bring to the boil. Stir until the sugar has dissolved, then leave over a medium heat, without stirring, for 6-8 mins. It should start to turn into a golden caramel, swirl it around and add the butter – stand back as it may spit a little. Stir well until combined. \r\n\r\n'),
(705, 145, 'Pour the caramel over the popcorn in the pan and stir immediately to coat the popcorn, being careful not to touch the hot caramel. Carefully transfer onto the lined baking tray and press down with the back of a spoon to spread evenly. Leave to cool for 5 mins, then break apart and eat. \r\n\r\n'),
(772, 98, 'Cover the dates with boiling water and set aside to soften for 30 mins.\r\n'),
(773, 98, 'Heat oven to 160C/140C fan/gas 3 and line a 20 x 30cm baking tin with baking parchment. Drain the dates, reserving the liquid, then whizz the dates to a purée with 100ml of the soaking liquid.\r\n'),
(774, 98, 'Beat the egg whites in a large bowl with an electric whisk until stiff peaks hold on the end of your whisk. Add half the sugar and beat until thick and glossy.\r\n'),
(775, 98, 'In another bowl, beat the yolks and remaining sugar until pale. Whisk in the mashed date mixture, then fold into the egg white mixture until well combined. Mix the flour, baking powder and cocoa with '),
(776, 98, 'Meanwhile, mix the custard powder, sugar and cocoa together in a saucepan. Stir in dribbles of milk until you get a smooth paste. Gradually add more milk until it’s all incorporated with no lumps. Put'),
(777, 98, 'Cut the warm cake into slabs and pour over the hot chocolate custard to serve.\r\n'),
(792, 9, 'Put 125ml warm water into a bowl and sprinkle over the yeast and 1 tsp of the sugar. Leave for 10-15 mins or until frothy. In a larger bowl, put the flour, remaining sugar, ½ tsp salt and baking powder. Mix together then make a well in the centre in which to pour the melted butter, yogurt, nigella seeds and yeast mixture. Stir well, then start to bring the mixture together with your hands. If it’s very wet add a spoonful of flour but if it’s dry add a splash more warm water. It should be a very soft dough but not so wet that it won’t come together into a ball.\r\n'),
(793, 9, 'When you’re happy with the consistency, start kneading, first in the bowl, then transfer the mixture onto a well-floured surface and continue to knead for 10 mins or until smooth and elastic but still soft. Butter a large bowl, then shape the dough into a ball and place in the prepared bowl. Cover and leave in a warm place for about 1 hr or until doubled in size.\r\n'),
(794, 9, 'Divide the dough into six balls and put them on a baking tray dusted with flour, then cover the tray with a damp tea towel. Heat a large non-stick frying pan over a high heat. Take one of the balls of dough and roll it out to form a teardrop shape that’s approximately 21cm long and around 13cm at the widest part. When the pan is very hot, carefully lay the naan bread into it. Let it dry fry and puff up for about 3 mins, then turn over and cook on the other side for another 3-4 mins or until cooked through and charred in patches.\r\n'),
(795, 9, 'Heat the oven to its lowest setting and put the cooked naan bread on a baking sheet. Brush with a little melted butter and cover with foil. Keep warm in the oven and layer up the cooked naans one on top of each other as you make them, brushing each one with melted butter or ghee as you go. Serve warm with curry or dips.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `RecipeCategory`
--

CREATE TABLE `RecipeCategory` (
  `recipe_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RecipeCategory`
--

INSERT INTO `RecipeCategory` (`recipe_id`, `category_id`) VALUES
(3, 1),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 1),
(9, 3),
(10, 3),
(11, 4),
(12, 4),
(13, 4),
(14, 1),
(14, 4),
(58, 1),
(59, 1),
(60, 3),
(61, 3),
(62, 3),
(63, 2),
(64, 2),
(65, 2),
(66, 1),
(67, 4),
(68, 4),
(69, 3),
(72, 1),
(73, 1),
(81, 1),
(82, 1),
(83, 4),
(84, 1),
(85, 2),
(86, 1),
(87, 1),
(88, 2),
(89, 4),
(90, 1),
(90, 4),
(93, 3),
(93, 4),
(94, 1),
(95, 1),
(96, 3),
(97, 3),
(97, 4),
(98, 1),
(99, 2),
(100, 2),
(101, 2),
(115, 2),
(116, 4),
(117, 2),
(117, 4),
(118, 4),
(119, 4),
(122, 1),
(122, 4),
(123, 2),
(124, 3),
(125, 2),
(137, 2),
(137, 4),
(145, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Recipes`
--

CREATE TABLE `Recipes` (
  `recipe_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `prep_time` int(11) DEFAULT NULL,
  `cook_time` varchar(25) DEFAULT NULL,
  `servings` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Recipes`
--

INSERT INTO `Recipes` (`recipe_id`, `name`, `prep_time`, `cook_time`, `servings`, `description`, `image`, `alt`, `author_id`) VALUES
(3, 'Triple chocolate & peanut butter layer cake', 45, '60', '14', 'Make a showstopping cake this Easter. Top chocolate sponge with peanut butter frosting, ganache drip, pretzel bark and chocolate eggs for a divine dessert', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/triple-chocolate-peanut-butter-layer-cake-2-e1897d5.jpg?quality=90&webp=true&resize=300,272', 'Triple chocolate & peanut butter layer cake', 8),
(4, 'Salted chocolate & hazelnut brownies', 20, '30', '9-12 squares', 'Chocolate hazelnut spread ensures these moreish. \"brownies have a fudgy centre. Flecked with pecans and sea salt - they\'ll be the new go-to brownie recipe', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/salted-chocolate-hazelnut-brownies-250693d.jpg?quality=90&webp=true&resize=300,272', 'salted-chocolate-hazelnut-brownies', 8),
(5, 'Mexican chicken burger', 10, '8', '1', 'Ready in under 20 minutes, this burger with spiced chipotle chicken breast, in toasted brioche with guacamole, makes for a satisfying weeknight treat for one', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/mexican-chicken-burger-092a6e0.jpg?quality=90&webp=true&resize=300,272', 'mexican-chicken-burger', 8),
(6, 'Traffic light chicken shish kebabs\r\n', 20, '10', '6', 'These barbecued kebabs are big on flavour, but the spice is toned down, so they\'re great for kids. Offer some chilli sauce on the side for those who like heat, and serve with flatbread\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/traffic-light-chicken-shish-kebabs-2f7fdad.jpg?quality=90&webp=true&resize=300,272', 'traffic-light-chicken-shish-kebabs.jpg', 2),
(7, 'Classic lasagne', 20, '140', '6', 'Prepare this easy lasagne ahead of time and save in the freezer, uncooked, for when you need it during a busy week. Then just bake for an extra 45 mins.\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1273579_7-9c7cfc0.jpg?quality=90&webp=true&resize=300,272', 'classic-lasagne.jpg', 1),
(8, 'millionaire’s shortbread', 25, '30', 'Makes up to 24 squares', 'Combine the crunch of a shortbread base with a gooey caramel middle and chocolate topping, and you have millionaire\'s shortbread – the ultimate sweet treat\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/millionaires-shortbread-52587dd.jpg?quality=90&webp=true&resize=300,272', 'millionaire’s-shortbread image caption', 10),
(9, 'naan bread', 20, '35', '6-8 servings', '<p>Make your own Indian flatbreads at home and you\'ll never go back to buying them. Delicious eaten warm, these naans are ideal served with your favourite curry</p>', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/naan-bread-dfcfdf3.jpg?quality=90&webp=true&resize=300,272', 'naan bread caption', 1),
(10, 'pitta-bread', 20, '40', 'makes up to 8 ', 'Rustle up homemade pitta bread to serve with dips or as a side dish to mop up juices. You can easily make them ahead and freeze them for a fail-safe snack\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/pitta-bread-74a1b32.jpg?quality=90&webp=true&resize=300,272', 'pitta-bread', 9),
(11, 'High protein breakfast', 5, '20', 'Serves 1', 'A protein-packed version of a classic fry-up from Joe Wicks. Pile on the steak, mushrooms and spinach for a hearty, filling start to the day\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/fry-up-e377f9d.jpg?quality=90&webp=true&resize=300,272', 'high protein bar ', 9),
(12, 'Breakfast bagel club\r\n', 5, '5', '2', 'Salty, smoky and creamy, this made-in-minutes toasted bagel with cream cheese, smoked salmon and avocado is ideal for Sunday brunch\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/avocado-salmon-bagel12476-b4a4f98.jpg?quality=90&webp=true&resize=300,272', 'avocado-salmon-bagel caption', 5),
(13, 'Breakfast bar\r\n', 20, '25', 'Makes 12', 'This fruity, chewy flapjack is packed with delicious oats and cereal - kids can help make them and they\'re perfect for lunchboxes\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1239560_8-a56514a.jpg?quality=90&webp=true&resize=300,272', 'breakfast bar', 5),
(14, 'Get up and go breakfast muffins\r\n', 22, '23', 'makes 12', 'With apple, blueberry, banana and seeds, this breakfast-on-the-go tastes great, is low in calories and uses honey instead of sugar\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1243649_8-7dfe2be.jpg?quality=90&webp=true&resize=300,272', 'muffin caption', 2),
(58, 'Rainbow cheesecake', 20, '70', 'Serves 12', 'Our show-stopping rainbow cheesecake is sure to brighten up any party. This easy dessert has a delicious biscuit base and vibrant, colourful layers\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/rainbow-cheesecake-228ad61.jpg?quality=90&webp=true&resize=300,272', 'Rainbow cheesecake caption', 6),
(59, 'Vegan chocolate ice cream\r\n', 25, '20', 'Serves 10', 'Indulge in homemade chocolate ice cream as the dessert course on a vegan menu. It\'s dairy free, egg free and gluten free, but still tastes delicious \r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/vegan-chocolate-ice-cream-fc31d9f.jpg?quality=90&webp=true&resize=300,272', 'vegan ice cream caption', 4),
(60, 'Plain flour bread\r\n', 10, '45', 'Cuts into 10 slices', 'This no-yeast bread is made using any plain flour you have at home. It’s slightly denser than a yeasted bread, but very satisfying spread with butter or dunked in hot soup\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/plain-flour-bread-440-400-79a3882.jpg?quality=90&webp=true&resize=300,272', 'plain flour bread caption', 4),
(61, 'Irish malted bread\r\n', 15, '20', 'Serves 8 - 10', 'Bake a loaf of this easy Northern Irish-style malted bread. It has a deliciously chewy texture and is best served with plenty of butter and jam\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/malted-irish-bread-5bff16f.jpg?quality=90&webp=true&resize=300,272', 'malted-irish-bread caption', 1),
(62, 'Easy-bake bread\r\n', 30, '35', 'Makes 1 large loaf', 'Baking homemade bread needn\'t be difficult – this recipe is easy to follow\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-879506_11-2405c95.jpg?quality=90&webp=true&resize=300,272', 'easy bake bread caption', 7),
(63, 'Spaghetti & meatballs\r\n', 30, '30', 'Makes about 10 servings', 'Get everyone to help rolling meatballs and you\'ll soon have one supper on the table and another in the freezer\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1035708_10-fdc5ae0.jpg?quality=90&webp=true&resize=300,272', 'meatballs caption', 7),
(64, 'Doner kebab', 20, '50', 'Serves 6', 'Make your own version of this takeaway favourite, complete with chilli and garlic sauces. Serve your homemade doner kebab with pitta bread and shredded cabbage\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/doner-kebab-cfc9441.jpg?quality=90&webp=true&resize=300,272', 'doner kebab caption', 8),
(65, 'Next level fried chicken\r\n', 30, '24', 'Serves 4', 'Choose boneless thighs to make the ultimate fried chicken. For the coating, we\'ve come up with a method that results in the crispiest finish ever\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/next-level-fried-chicken-dbd69d6.jpg?quality=90&webp=true&resize=300,272', 'next-level-fried-chicken caption', 9),
(66, 'Chocolate peanut butter shortbread sandwiches', 20, '25', 'Makes about 16', 'If you love peanut butter, what could be better than peanut buttercream slathered between two chocolate shortbread biscuits? Sure to go down a treat.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-peanut-butter-shortbread-sandwiches-0690874.jpg?quality=90&webp=true&resize=300,272', 'chocolate-peanut-butter-shortbread-sandwiches caption', 3),
(67, 'Breakfast burrito', 5, '10', 'Serves 10', 'Make a nutritious cocoon for breakfast ingredients with a wholemeal wrap. We’ve included protein-rich eggs and avocado to add good fats to this burrito\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/breakfast-burrito-b086548.jpg?quality=90&webp=true&resize=300,272', 'breakfast-burrito caption', 2),
(68, 'Cinnamon twists', 40, '20', 'Makes 16-18', 'Bake these fabulous cinnamon twists for an on-the-go breakfast or sweet treat. They take a little effort but are well worth it\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/cinnamon-twists-7e3c96d.jpg?quality=90&webp=true&resize=300,272', 'cinnamon-twists caption', 1),
(69, 'Tiger bread', 25, '35', 'Makes 10-12 slices', 'With its iconic crackled crust and pillowy centre, tiger bread is a fantastic baking recipe to have up your sleeve. Our easy recipe is simple, and makes a great weekend project\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/tiger-bread-6399968.jpg?quality=90&webp=true&resize=300,272', 'tiger bread caption', 6),
(72, 'Double chocolate cheesecake', 40, '35', 'Serves 16', 'Cheesecake is always incredibly popular, but add chocolate and it elevates it to something with even more crowd appeal.\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-14393_11-919171e.jpg?quality=90&webp=true&resize=300,272', 'double chocolate cheese cake', 6),
(73, 'Winter wonderland cake', 60, '35', 'Serves 12', 'A great Christmas bake for kids over the holidays. You can use a buttercream to ice the cake, but this frosting is much whiter if you want a snowy effect.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/winter-wonderland-cake-e439a0c.jpg?quality=90&webp=true&resize=300,272', 'winter-wonderland-cake-caption', 9),
(81, 'Dairy ice cream', 15, '120', 'Serves 6', 'Make your own no-churn ice cream with a recipe from the award-winning Our Cow Molly. You only need eggs, sugar and double cream for this cooling summer treat\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/dairy-ice-cream-e127d41.jpg?quality=90&webp=true&resize=300,272', 'dairy-ice-cream caption', 5),
(82, 'Ice cream sundae bars', 20, '15', 'Serves 8', '<p>Create a pop-up bar for teens that serves ice cream sundaes. Choose the flavours everyone likes and offer a range of toppings so guests can help themselves</p>', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/ice-cream-sundae-bar-e48580f.jpg?quality=90&webp=true&resize=300,272', 'ice-cream-sundae-bar caption', 1),
(83, 'Breakfast super-shake', 5, 'No cooking time required', 'Serves 1', 'This smoothie is high in natural fats and sugar - ideal if you need some fuel for intense exercise.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/breakfast-super-shake-e63774c.jpg?quality=90&webp=true&resize=300,272', 'breakfast-super-shake caption', 8),
(84, 'Club Tropicana ice cream cake', 60, '2', 'Serves 8', 'Serve up the wow factor at the end of a summer menu with this ice cream cake. It features layers of mango and raspberry sorbet, sponge, cream and chocolate\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/club-tropicana-ice-cream-cake-f06358c.jpg?quality=90&webp=true&resize=300,272', 'club-tropicana-ice-cream-cake caption', 8),
(85, 'Jamaican jerk chicken', 15, '55', 'Serves 2', 'Make your own jerk seasoning to use as a marinade for chicken. Scotch bonnet peppers and spices bring heat and plenty of flavour\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/11/Jerk-chicken-c7d5507.jpg?quality=90&webp=true&resize=300,272', 'Jerk-chicken caption', 9),
(86, 'Easy chocolate biscuits', 25, '15', 'Makes 25 biscuits', 'Try this basic recipe for fail-safe biscuits every time. Make a batch of chocolate chip cookies, or adapt it to include nuts, fruit or your favourite sweets\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/easy_choc_biscuits-59ca9be.jpg?quality=90&webp=true&resize=300,272', 'easy_choc_biscuits caption', 4),
(87, 'Bread pudding', 10, '90', 'Cuts into 9 squares', 'This simple bake is lovely with a cuppa. Or have it for dessert instead, with custard or ice cream\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-424712_11-9409dbe.jpg?quality=90&webp=true&resize=300,272', 'Bread-pudding caption', 4),
(88, 'Chicken masala skewers', 5, '12', 'Serves 4', 'These skewers are great with a dollop of mango chutney or raita, and can also be cooked on the barbecue for hot summer days\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-327569_12-f9d1b5b.jpg?quality=90&webp=true&resize=300,272', 'Chicken-masala-skewers caption', 4),
(89, 'Healthy pancakes', 15, '30', 'Makes 10-12', 'These easy healthy pancakes get their fluffy texture from whipped egg whites. Stack them high with fresh berries and a spoonful of low-fat yogurt\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/healthy-fc28587.jpg?quality=90&webp=true&resize=300,272', 'healthy-pancake caption', 7),
(90, 'Tea & biscuits cheesecake bars', 45, '5', 'Serves 12-14', 'What\'s better than dunking biscuits into tea? These ingenious tea and biscuits cheesecake bars capture that flavour sensation perfectly.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/tea-biscuits-cheesecake-bars-4701f29.jpg?quality=90&webp=true&resize=300,272', 'tea-biscuits-cheesecake-bars caption', 6),
(93, 'Croissants', 76, '18', 'Makes 12-14', 'James Martin shares his recipe for this French patisserie classic. It involves some ambitious pastry work, but the end results are worth it\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/croissants_0-9efd0ea.jpg?quality=90&webp=true&resize=300,272', 'croissants caption', 3),
(94, 'Coffee cake', 20, '30', 'Serves 8', 'Whip up a classic coffee cake with ease. You can freeze the sponges if you want to save time later on. Ideal for a bake sale, birthday party or coffee morning\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/coffee-cake-4d37cac.jpg?quality=90&webp=true&resize=300,272', 'coffee-cake caption', 3),
(95, 'Chocolate milkshake', 5, '1', 'Serves 1', 'This indulgent masterpiece is one seriously special treat. Perfect your presentation and serve up this chilled drink topped with marshmallows, cream and a drizzle of chocolate spread\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/milkshake-b0d6105.jpg?quality=90&webp=true&resize=440,400', 'chocolate milkshake caption', 3),
(96, 'Gluten-free bread', 5, '60', 'Makes 1 loaf (10-12 slices)', 'A straightforward loaf of bread for anyone who\'s following a gluten-free diet. Bake this and use it to make sandwiches or toast, or simply slather it in butter\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/gluten-free-bread-713ab27.jpg?quality=90&webp=true&resize=300,272', 'gluten-free-bread', 1),
(97, 'Brioche', 40, '35', 'Serves 8', 'Make homemade brioche and enjoy with jam or butter for breakfast. It takes a little effort, but the results of this sweet, soft bread are well worth it\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/brioche-597b5f8.jpg?quality=90&webp=true&resize=300,272', 'brioche caption', 3),
(98, 'Chocolate sponge with hot chocolate custard', 30, '40', 'Serves 12', '<p>This rich, sticky chocolate cake is given a low-fat \'bakeover\', then served with chocolate custard for a perfect retro, weekend pud</p>', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chocolate-sponge-5662ae6.jpg?quality=90&webp=true&resize=300,272', 'chocolate-sponge-cake caption', 1),
(99, 'Best ever oven chips', 10, '50', 'Serves 4', 'Make your own crispy, golden oven chips and save yourself some money. They\'re also much easier to cook than their fried counterparts\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/best-ever-oven-chips-df63cbe.jpg?quality=90&webp=true&resize=300,272', 'best-ever-oven-chips caption', 10),
(100, 'Tandoor chicken', 30, '30', 'Serves 4', 'This Indian chicken dish has two marinades and takes more effort, but the wonderful spicy flavours are well worth it – it\'s a guaranteed crowd-pleaser.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/house-tandoor-chicken-0aa03c3.jpg?quality=90&webp=true&resize=300,272', 'tandoori-tandoor-chicken', 10),
(101, 'BBQ tandoori-style chicken', 10, '25', 'Serves 48', 'This yogurt-based Indian marinade is poured over chicken thighs, then barbecued or grilled - leave to soak up the flavours for juicy chicken.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/bbq-tandoori-style-chicken-65e410b.jpg?quality=90&webp=true&resize=300,272', 'bbq-tandoori-style-chicken caption', 10),
(115, 'Spicy chicken kebabs', 30, '15', 'Makes 20', 'These fresh, spicy kebabs don’t just taste great – the whole family will enjoy making them.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-192677_12-ecf7c90.jpg?quality=90&webp=true&resize=300,272', 'spicy-chicken-kebabs caption', 2),
(116, 'French toast', 5, '15', 'Serves 4', 'Eggy bread, pain perdu or French toast – this classic breakfast dish has plenty of names and just as many options for toppings.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/french-toast_1-5bbce73.jpg?quality=90&webp=true&resize=300,272', 'french-toast caption', 3),
(117, 'Next level spaghetti & meatballs', 30, '45', 'Serves 6', 'Make the ultimate meatballs in a rich tomato sauce to serve over spaghetti. Comfort food at its best, this will prove a hit at the family dinner table.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/next-level-meatballs-20a5c63.jpg?quality=90&webp=true&resize=300,272', 'next-level-meatballs caption', 6),
(118, 'Irish coffee', 5, 'No cooking time required', 'Serves 1', 'Indulge dinner guests with a classic Irish coffee at the end of a dinner party. Made with Irish whiskey, cream and coffee, it\'s a decadent finale to a meal\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/irish_coffee-5c6049f.jpg?quality=90&webp=true&resize=300,272', 'irish_coffee caaption', 6),
(119, 'Iced coffee', 5, 'No cooking time required', 'Serves 1', '<p>Discover how to make iced coffee at home. With this simple recipe, you can get a cooling caffeine fix with no fuss. Try it with a shot of maple syrup</p>', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/iced-coffee-6617db5.jpg?quality=90&webp=true&resize=300,272', 'iced-coffee caption', 7),
(122, 'American blueberry pancakes', 15, '20', 'Makes 10 pancakes', 'Light, fluffy and fruity, these pancakes are an American classic. Serve them stacked high with syrup and extra fruit.', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-1273456_8-a5710e5.jpg?quality=90&webp=true&resize=300,272', 'American-blueberry-pancakes caption', 3),
(123, 'Indian lamb chops', 30, '30', 'Serves 4', 'Try these crispy Indian lamb chops cooked Amritsari-style on the barbecue. Two marinades means it takes more time to prepare, but you\'ll achieve more flavour\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/amritsari-crispy-lamb-chops-028cae6.jpg?quality=90&webp=true&resize=300,272', 'indian-crispy-lamb-chops caption', 6),
(124, 'Classic white loaf', 20, '45', '16 slices', 'Once you\'ve mastered this basic loaf, the bread-making world\'s your oyster.\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/recipe-image-legacy-id-559666_11-b53071d.jpg?quality=90&webp=true&resize=300,272', 'classic-white-loaf caption', 3),
(125, 'Greek chicken kebab', 20, '55', 'Serves 6', 'This version of Greek gyro chicken kebabs uses thigh instead of breast to keep the meat really succulent\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/greek-chicken-063f60d.jpg?quality=90&webp=true&resize=300,272', 'greek-chicken-kebab caption', 6),
(137, 'Slow-cooker butter chicken', 25, '60', 'Serves 4', 'Try this slow-cooker butter chicken curry for a guaranteed family favourite. It has a creamy, lightly spiced tomato sauce and juicy chunks of chicken.\r\n\r\n', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/butter-chicken-8253e9d.jpg?quality=90&webp=true&resize=300,272', 'butter chicken caption', 69),
(145, 'Sweet popcorn', 2, 'No cooking time required', 'Serves 6', '<p>Make a batch of sweet popcorn for a home movie night.&nbsp;It’s a great snack for sharing, or divide into paper cones to avoid bickering!</p>', 'https://images.immediate.co.uk/production/volatile/sites/30/2020/08/popcorn-2afe9a3.jpg?quality=90&webp=true&resize=300,272', 'sweet popcorn', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Role`
--

CREATE TABLE `Role` (
  `role_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Role`
--

INSERT INTO `Role` (`role_id`, `description`) VALUES
('Account Administrator', 'Add, remove, and edit authors'),
('Content Editor', 'Add, remove, and edit recipes'),
('Site Administrator', 'Add, remove, and edit categories');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Author`
--
ALTER TABLE `Author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `AuthorRole`
--
ALTER TABLE `AuthorRole`
  ADD PRIMARY KEY (`author_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `Categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD PRIMARY KEY (`ingredient_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `PrepMethod`
--
ALTER TABLE `PrepMethod`
  ADD PRIMARY KEY (`prep_id`),
  ADD KEY `recipe_id` (`recipe_id`);

--
-- Indexes for table `RecipeCategory`
--
ALTER TABLE `RecipeCategory`
  ADD PRIMARY KEY (`recipe_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `Recipes`
--
ALTER TABLE `Recipes`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Author`
--
ALTER TABLE `Author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `Categories`
--
ALTER TABLE `Categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `Ingredients`
--
ALTER TABLE `Ingredients`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1272;

--
-- AUTO_INCREMENT for table `PrepMethod`
--
ALTER TABLE `PrepMethod`
  MODIFY `prep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=796;

--
-- AUTO_INCREMENT for table `Recipes`
--
ALTER TABLE `Recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `AuthorRole`
--
ALTER TABLE `AuthorRole`
  ADD CONSTRAINT `AuthorRole_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `Author` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `AuthorRole_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `Role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Ingredients`
--
ALTER TABLE `Ingredients`
  ADD CONSTRAINT `ingredients_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PrepMethod`
--
ALTER TABLE `PrepMethod`
  ADD CONSTRAINT `prepmethod_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RecipeCategory`
--
ALTER TABLE `RecipeCategory`
  ADD CONSTRAINT `recipecategory_ibfk_1` FOREIGN KEY (`recipe_id`) REFERENCES `Recipes` (`recipe_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recipecategory_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `Categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Recipes`
--
ALTER TABLE `Recipes`
  ADD CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `Author` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
