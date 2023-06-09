USE CraftShopDB

--Product.Category RECORDS
INSERT INTO Product.Category(Name, IsActive)
VALUES 
('Writing',1),
('Bag',1),
('Folder',1),
('Stationary',1),
('Measurement',1)


--Product.SubCategory RECORDS
INSERT INTO Product.SubCategory(Specification, CategoryID, IsActive)
VALUES 
('Mechanical Pencil', 1, 1),
('Lead Pencil', 1, 1),
('Highlighter', 1, 1),
('Brush Pen', 1, 1),
('Fountain Pen', 1, 1),
('Ink', 1, 1),
('Refill Leads', 1, 1),
('Ballpoint Pen', 1, 1),
('Crayon', 1, 1),
('Colouring Pencils', 1, 1),
('Gel Pens', 1, 1),
('Eraser', 1, 1),
('Sharpener', 1, 1),
('Lined Paper � 40 Pages', 1, 1),
('Lined Paper � 60 Pages', 1, 1),
('Lined Paper � 80 Pages', 1, 1),
('Grid Paper � 40 Pages', 1, 1),
('Grid Paper � 60 Pages', 1, 1),
('Grid Paper � 80 Pages', 1, 1),
('Dotted Paper � 40 Pages', 1, 1),
('Dotted Paper � 60 Pages', 1, 1),
('Dotted Paper � 80 Pages', 1, 1),
('Plain Paper � 40 Pages', 1, 1),
('Plain Paper � 60 Pages', 1, 1),
('Plain Paper � 80 Pages', 1, 1),
('Notepad', 1, 1),
('Sticky Notes', 1, 1),
('Sketchbook', 1, 1),
('Monthly Planner', 1, 1),
('Weekly Planner', 1, 1),
('Daily Planner', 1, 1),
('Preschool Backpack', 2, 1),
('Elementary School Backpack', 2, 1),
('High School Backpack', 2, 1),
('Pencil Case', 2, 1),
('Cloth Bag', 2, 1),
('Conference Folder', 3, 1),
('Presentation Folder', 3, 1),
('Flat Bar Folder', 3, 1),
('Folder Divider', 3, 1),
('Glue', 4, 1),
('Scissors', 4, 1),
('Hole Punch', 4, 1),
('Tape', 4, 1),
('Tape Dispenser', 4, 1),
('Stapler', 4, 1),
('Staples', 4, 1),
('Clips', 4, 1),
('Push Pin', 4, 1),
('Ruler', 5, 1),
('Compass', 5, 1),
('Set Square', 5, 1),
('Desk Calculator', 5, 1),
('Scientific Calculator', 5, 1)


--Product.Color RECORDS
INSERT INTO Product.Color(Name, IsActive)
VALUES 
('Blue', 1),
('Pink', 1),
('Green', 1),
('Yellow', 1),
('Black', 1),
('Purple', 1),
('Orange', 1),
('Grey', 1),
('Multi-Coloured', 1),
('Red', 1),
('White', 1),
('Brown', 1)

--Address.AddressType RECORDS
INSERT INTO Address.AddressType(Name)
VALUES
('Home'),
('Bussiness')

--Product.Poduct RECORDS
INSERT INTO Product.Product(Name, Description, Price, Photo, Stock, IsActive, AddDate, SubCategoryID, ColorID)
VALUES 
('Parker Jotter Pencil Chrome Trim Stainless Steel',
'Parker Classic Stainless Steel 0.5MM Mechanical Pencil. This belongs with the popular Parker Jotter pencils. Diamond engraved in position alongside the pocket clip. This item makes the perfect gift for everyone who loves quality pencils.',
30,
'craftshopimg/ParkerJotterMechanical.png',
75,
1,
CURRENT_TIMESTAMP,
1,
8),
('Staedtler Traditional Pencil 2H',
'The Staedtler Traditional Pencil is a high quality 2H pencil. The Staedtler Traditional Pencil comes in the traditional black design and has super-bonded lead making it especially break-resistant. It is also easy to erase. Ideal for everyday use at home, school or in the office this Staedtler Traditional 2H Pencil is great for sketching, note taking and much more.',
3,
'craftshopimg/StaedtlerTraditional.jpg',
102,
1,
CURRENT_TIMESTAMP,
2,
5),
('Legami I Love Bamboo Pencil with Eraser',
'The Legami I Love Bamboo Pencil with Eraser features HB lead with an adorable removable Panda that doubles as an eraser. This extremely fun but useful pencil is perfect whether you are at school, the office or just in your free time, adding a fun twist to your stationary set. The perfect gift for panda lovers.',
7,
'craftshopimg/LegamiPencil.png',
30,
0,
CURRENT_TIMESTAMP,
2,
3),
('Stabilo Boss Highlighter',
'The STABILO Boss Highlighter''s distinctive design stops the pen from rolling away and its water-based ink is suitable for paper, copies or faxes. Perfect for the office or home the STABILO Boss fluorescent Highlighter is ideal for quick and easy highlighting of documents, revision work, notes or for emphasis in the meeting room.',
6,
'craftshopimg/StabiloBossHighlighter.jpg',
46,
1,
CURRENT_TIMESTAMP,
3,
6),
('STABILO Luminator Highlighter',
'The STABILO Luminator boasts a large, liquid ink reservoir, for a smoother flow and longer highlighting life. This excellent highlighter pen has an ink level indicator so you can see when it needs replacing. Enjoy total control, right down to the last drop, with this modern looking highlighter with an extraordinary grip for a firm, comfortable hold.',
8,
'craftshopimg/STABILOLuminatorHighlighter.png',
137,
1,
CURRENT_TIMESTAMP,
3,
4),
('1893 Art Multi-Coloured Brush Pens Pack of 24',
'These 1893 Art Multi-Coloured Brush Pens Pack of 24 are a fantastic choice for those that enjoy arts and crafts. A great collection of brush pens, ideal for creating masterpieces and amazing paintings. These amazing brush pens come in an array of beautiful and vibrant colours. The set includes 24 brush pens and also 2 useful water brush pens as well! Great for creating different paint effects and brush marks to add interest to your artwork. Sure to suit the needs of any artist.',
47,
'craftshopimg/BrushPens.png',
21,
1,
CURRENT_TIMESTAMP,
4,
9),
('Parker Sonnet Red Lacquer Gold Tip Fountain Pen',
'Bring sophistication to every writing occasion with this stunning Parker Sonnet Red Lacquer Fountain Pen. The gold plated stainless steel nib complements the sleek red design beautifully. Every intricate detail has been executed to bring you a functional, stylish, unique pen. The pen is packaged in a premium gift box and would make a special gift for somebody important in your life.',
600,
'craftshopimg/GoldTipFountainPen.png',
12,
1,
CURRENT_TIMESTAMP,
5,
10),
('Parker Quink Ink Permanent 60ml',
'This Parker Quink Ink is a 60ml bottle of black ink for use in ink converters and reservoir fountain pens. Parker Quink Ink can be used as a drawing ink, and is permanent.',
45,
'craftshopimg/ParkerInk.jpg',
20,
1,
CURRENT_TIMESTAMP,
6,
5),
('Rotring Lead 0.5mm HB Blister of 2',
'The Rotring Lead 0.5mm is a HB blister of 2. These high-polymer leads are for use in the fine mechanical pencils. They are extra-strong and flexible and easy to erase. This pack is perfect for use in any home or office.',
20,
'craftshopimg/RotringLead.png',
98,
1,
CURRENT_TIMESTAMP,
7,
5),
('BiC Cristal Medium Ballpen',
'The BiC Cristal Ballpen is an excellent value ball point pen with a medium tip. As its name suggests, this is a well-known everyday pen that offers reliability and precise writing. The BiC Cristal''s ink supply is visible, to warn you when ink levels are running low. The BiC Cristal Ballpen also features a handy pocket clip, and is perfect for general use in the home or office.',
3,
'craftshopimg/BiCBallPen.png',
250,
1,
CURRENT_TIMESTAMP,
8,
3),
('Parker Sonnet Matte Black CT Ball Pen',
'This elegant pen is part of the Sonnet collection by Parker. Every detail has been intricately executed to bring style and sophistication to every written word. The pen is coated in satin effect, matte black resin, which is complemented with palladium finish trims and a stainless steel nib. This special pen is packaged in a Parker premium gift box and would make a thoughtful gift for a loved one.',
550,
'craftshopimg/ParkerSonnetBallPen.jpg',
250,
1,
CURRENT_TIMESTAMP,
8,
5),
('Crayola Wax Crayons Pack of 24',
'This pack of 24 Crayola Wax Crayons in assorted colours is perfect for kids who love to draw. This pack contains 24 high quality wax crayons that give a smooth colour lay down with no uneven build up or streaking. Plus, the crayons are double-wrapped for extra strength, providing hours of creative fun. Crayola Wax Crayons come in 24 bright colours, including: indigo, blue, cerulean, blue-green, green, yellow-green, green-yellow, dandelion, yellow, yellow-orange, apricot, orange, scarlet, red-orange, red, violet-red, red-violet, carnation pink, violet, blue-violet, brown, white, grey and black.',
10,
'craftshopimg/WaxCrayons.png',
69,
1,
CURRENT_TIMESTAMP,
9,
9),
('Staedtler Colouring Pencils Pack of 12',
'This is a pack of 12 Staedtler Colouring Pencils in assorted colours, for sketching, colouring and drawing. The classic hexagonal shape prevents it from rolling off tables and other surfaces, while pencils are lacquered in lead colour for easier identification of colours. There are 12 vibrant colours in this pack, these are: yellow, peach, orange, red, magenta, violet, blue, cyan, willow green, green, brown and black.',
35,
'craftshopimg/StaedtlerColouringPencils.jpeg',
56,
1,
CURRENT_TIMESTAMP,
10,
9),
('Helix Oxford Metallic Gel Pens Pack of 4',
'A range of high quality ballpoint pens ideal for school, home and office. 4 Medium tipped Ballpoint pens with metallic gel Ink. Bold colours with metallic shimmer effect . Smooth continuous ink flow. Plastic free packaging. Silver, Gold, Red and Green.',
23,
'craftshopimg/MetallicGelPens.png',
3,
1,
CURRENT_TIMESTAMP,
11,
9),
('Staedtler Rasoplast Erasers Pack of 3',
'This is a pack of 3 Staedtler Rasoplast Erasers, which are high quality rubbers for first-class erasing performance. This rasoplast white eraser has a wide variety of uses, including the removal of graphite from pencils on paper and matt drafting film, and OHP pen on overhead projector film. The Staedtler Rasoplast Eraser is ideal for everyday use at school, home or the office.',
15,
'craftshopimg/StaedtlerRasoplast.png',
300,
1,
CURRENT_TIMESTAMP,
12,
11),
('Swordfish Shielded Eraser',
'This Swordfish shielded eraser is a high quality eraser for rubbing out pencil mark on paper or card. Ideal for everyday use at school, home or the office. The plastic shielding offers you a good grip on the eraser.',
4,
'craftshopimg/SwordfishShieldedEraser.png',
2,
0,
CURRENT_TIMESTAMP,
12,
2),
('Staedtler Jumbo Canister Pencil Sharpener Assorted',
'The Staedtler Jumbo Canister Pencil Sharpener has a handy barrel, which collects shavings as you sharpen. Effortlessly sharpen your graphite and colour pencils, producing a nice, sharp point for clear, accurate lines and detail. This sharpener comes in assorted colours that are sure to brighten up your stationery collection.',
5,
'craftshopimg/PencilSharpener.png',
44,
1,
CURRENT_TIMESTAMP,
13,
4),
('Essentials Notebook-Lined-40 Pages',
'This Essentials Notebook wire bound notebook will be perfect for students and general office use. Each page is ruled and perforated for clean and easy removal of sheets. The pages are also 2 hole punched so they can be used in a ring binder for assignments or projects. This notebook can be folded 180 degrees thanks to the wire bind.',
15,
'craftshopimg/NotebookOrange.jpg',
78,
1,
CURRENT_TIMESTAMP,
14,
7),
('Essentials Notebook-Lined-60 Pages',
'This Essentials Notebook wire bound notebook will be perfect for students and general office use. Each page is ruled and perforated for clean and easy removal of sheets. The pages are also 2 hole punched so they can be used in a ring binder for assignments or projects. This notebook can be folded 180 degrees thanks to the wire bind.',
20,
'craftshopimg/NotebookPink.jpg',
78,
1,
CURRENT_TIMESTAMP,
15,
2),
('Essentials Notebook-Lined-80 Pages',
'This Essentials Notebook wire bound notebook will be perfect for students and general office use. Each page is ruled and perforated for clean and easy removal of sheets. The pages are also 2 hole punched so they can be used in a ring binder for assignments or projects. This notebook can be folded 180 degrees thanks to the wire bind.',
25,
'craftshopimg/NotebookGreen.jpg',
95,
1,
CURRENT_TIMESTAMP,
16,
3),
('Leuchtturm1917 Hard Cover Notebook-Dotted-40 Pages',
'This premium quality Leuchtturm1917 Notebook is A5 in size with squared paper and is perfect for everyday use in the office, at home, school or university. This notebook features two page markers so you can easily navigate through your notes as well as an inside pocket for storing loose paper notes and an elastic closure keeping your notes neat and protected.',
30,
'craftshopimg/LeuchtturmGreen.jpg',
45,
1,
CURRENT_TIMESTAMP,
20,
3),
('Leuchtturm1917 Hard Cover Notebook-Dotted-60 Pages',
'This premium quality Leuchtturm1917 Notebook is A5 in size with squared paper and is perfect for everyday use in the office, at home, school or university. This notebook features two page markers so you can easily navigate through your notes as well as an inside pocket for storing loose paper notes and an elastic closure keeping your notes neat and protected.',
35,
'craftshopimg/LeuchtturmBrown.jpg',
678,
1,
CURRENT_TIMESTAMP,
21,
12),
('Leuchtturm1917 Hard Cover Notebook-Dotted-80 Pages',
'This premium quality Leuchtturm1917 Notebook is A5 in size with squared paper and is perfect for everyday use in the office, at home, school or university. This notebook features two page markers so you can easily navigate through your notes as well as an inside pocket for storing loose paper notes and an elastic closure keeping your notes neat and protected.',
40,
'craftshopimg/LeuchtturmBlue.jpg',
456,
1,
CURRENT_TIMESTAMP,
22,
1),
('Silvine Exercise Book-Squared-40 Pages',
'This Silvine Exercise Book is perfect for school and home use. This exercise book contains 40 pages of squared paper and is ideal for use in maths and science subjects.',
15,
'craftshopimg/SilvineBlue.jpeg',
554,
1,
CURRENT_TIMESTAMP,
17,
1),
('Silvine Exercise Book-Squared-60 Pages',
'This Silvine Exercise Book is perfect for school and home use. This exercise book contains 60 pages of squared paper and is ideal for use in maths and science subjects.',
20,
'craftshopimg/SilvineGreen.jpeg',
253,
1,
CURRENT_TIMESTAMP,
18,
3),
('Silvine Exercise Book-Squared-80 Pages',
'This Silvine Exercise Book is perfect for school and home use. This exercise book contains 80 pages of squared paper and is ideal for use in maths and science subjects.',
25,
'craftshopimg/SilvineYellow.jpeg',
125,
1,
CURRENT_TIMESTAMP,
19,
4),
('Moleskine Hard Cover Classic Notebook-Plain-40 Pages',
'This Moleskine Notebook, from the Classic Collection, features a bright, vivid, Yellow luxury hard cover. The elastic closure is there to keep the pages protected and your notes secure, there is also a bookmark ribbon allowing you to refer to a particular page quickly and easily. The expandable inner pocket at the back is perfect for storing loose notes and small documents.',
30,
'craftshopimg/MoleskineHardCoverYellow.png',
55,
1,
CURRENT_TIMESTAMP,
23,
4),
('Moleskine Hard Cover Classic Notebook-Plain-60 Pages',
'This Moleskine Notebook, from the Classic Collection, features a bright, vivid, Red luxury hard cover. The elastic closure is there to keep the pages protected and your notes secure, there is also a bookmark ribbon allowing you to refer to a particular page quickly and easily. The expandable inner pocket at the back is perfect for storing loose notes and small documents.',
35,
'craftshopimg/MoleskineHardCoverRed.jpg',
54,
1,
CURRENT_TIMESTAMP,
24,
10),
('Moleskine Hard Cover Classic Notebook-Plain-80 Pages',
'This Moleskine Notebook, from the Classic Collection, features a bright, vivid, Black luxury hard cover. The elastic closure is there to keep the pages protected and your notes secure, there is also a bookmark ribbon allowing you to refer to a particular page quickly and easily. The expandable inner pocket at the back is perfect for storing loose notes and small documents.',
40,
'craftshopimg/MoleskineHardCoverBlack.png',
23,
1,
CURRENT_TIMESTAMP,
25,
5),
('Eden Shopping List Notepad',
'Send positive messages Eden ''Get Organised'' Shopping List-style notepad. Ideal for making lists and taking notes, ideal for taskmasters who like to stay on top of work. Featuring a thin strip of cool white lined paper which lends itself to list making or brief note taking. These lists are finished in lovely deep green or a pink and gold pattern which is sure to set you apart.',
2,
'craftshopimg/EdenShoppingList.png',
98,
1,
CURRENT_TIMESTAMP,
26,
2),
('Post-it Super Sticky Notes',
'Post-it super are the ultimate in their range of sticky notes. They hold stronger and for longer ensuring that you can reposition them again and again. A must have for revision, brainstorming ideas and giving yourself reminders when you need them.',
8,
'craftshopimg/Post-it.jpg',
124,
1,
CURRENT_TIMESTAMP,
27,
9),
('Seawhite Kraft Cover Eco Starter Sketchbook',
'Switch to an eco-alternative sketchbook with this A4 Seawhite Kraft Cover Eco Starter Sketchbook. Featuring 32 pages of Cradle to Cradle Certified 150gsm ecological cartridge paper, this sketchbook features alternate pages of 8mm printed lined and plain paper for both illustration and annotation. The natural Kraft card cover features rounded corners and staple binding.',
10,
'craftshopimg/SeawhiteKraft.png',
452,
1,
CURRENT_TIMESTAMP,
28,
12),
('Letts Rhino 2023 Monthly Planner',
'Make a positive change by organising your life with a Letts A4 Letts Rhino 2023 Monthly Planner is the perfect organiser and companion for your day to day activities. It offers a hard wearing cover with hidden wire binding so the diary can fold flat or be folded back on itself as well as being tabbed into monthly dividers to get to the date you need quickly.',
40,
'craftshopimg/Planner.png',
345,
1,
CURRENT_TIMESTAMP,
29,
5),
('Letts Rhino 2023 Weekly Planner',
'Make a positive change by organising your life with a Letts A4 Letts Rhino 2023 Weekly Planner is the perfect organiser and companion for your day to day activities. It offers a hard wearing cover with hidden wire binding so the diary can fold flat or be folded back on itself as well as being tabbed into weekly dividers to get to the date you need quickly.',
40,
'craftshopimg/Planner.png',
345,
1,
CURRENT_TIMESTAMP,
30,
5),
('Letts Rhino 2023 Daily Planner',
'Make a positive change by organising your life with a Letts A4 Letts Rhino 2023 DailuPlanner is the perfect organiser and companion for your day to day activities. It offers a hard wearing cover with hidden wire binding so the diary can fold flat or be folded back on itself as well as being tabbed into daily dividers to get to the date you need quickly.',
40,
'craftshopimg/Planner.png',
23,
1,
CURRENT_TIMESTAMP,
31,
5),
('Mystical Dreams Rucksack',
'Go back to school in style with this Mystical Dreams Rucksack. This bag features a beautiful design that will stand out from the crowd and two zipped compartments. Keep your uniform, swim kit, notepads and other items safely tucked away in the main zipped compartment and your pencils case along with other bits of stationery in the smaller front compartment.',
80,
'craftshopimg/MysticalDreamsRucksack.jpg',
150,
1,
CURRENT_TIMESTAMP,
32,
9),
('Jurassic Rucksack',
'Your little one will love heading back to school with this Jurassic Rucksack. This bag features a beautiful design that will stand out from the crowd and two zipped compartments. Keep your uniform, swim kit, notepads and other items safely tucked away in the main zipped compartment and your pencils case along with other bits of stationery in the smaller front compartment.',
90,
'craftshopimg/JurassicRucksack.jpg',
342,
1,
CURRENT_TIMESTAMP,
33,
1),
('Inverse White Striped Backpack',
'Go back to school in style with this Inverse White Striped Backpack. This bag features a design to stand out from the crowd along with plenty of compartments for keeping clothes, lunch boxes and more! Keep your uniform, swim kit, notepads and other items safely tucked away in the main zipped compartment and your pencil case along with other bits in the smaller front compartment.',
110,
'craftshopimg/StripedBackpack.png',
435,
1,
CURRENT_TIMESTAMP,
34,
5),
('Sporty Wedge Pencil Case',
'Store all of your favourite stationery and school essentials in this Sporty Wedge Pencil Case. This spacious sporty case has plenty of room for all your pens and pencils, even use as a makeup and cosmetics case. This simple but stylish case boasts a zipped closure, perfect for storing all of your favourite pens and pencils. A must have pencil case for school or college.',
14,
'craftshopimg/SportyPencilCase.png',
411,
1,
CURRENT_TIMESTAMP,
35,
10),
('Shopper Bag',
'100% cotton canvas fabric, large zippered inner pocket, dual-use handle. Length: 32 cm Width: 34 cm Depth: 23 cm Short handle: 7 cm Long handle: 23 cm',
46,
'craftshopimg/ShopperBag.png',
256,
1,
CURRENT_TIMESTAMP,
36,
6),
('Ryman Conference Folder A4 With Tab Fastener',
'This A4 Ryman Conference folder is ideal for storing all your important documents. The carry case has a tab fastener for securely storing all your important paperwork. This professional style document case has all the compartments needed for an executive on the go, whether it is for attending meetings or simply for keeping yourself organised. It would be ideal for home and office use.',
20,
'craftshopimg/RymanConferenceFolder.png',
35,
1,
CURRENT_TIMESTAMP,
37,
5),
('Ryman Elasti Folder A3',
'This hardwearing Ryman Elasti folder holds A3 paperwork and would be perfect for projects or presentations. The elasticated edges hold your work securely in place. A must have for school, college or university.',
4,
'craftshopimg/RymanElastiFolder.png',
88,
1,
CURRENT_TIMESTAMP,
38,
11),
('Exacompta Flat Bar Folder A4 Pack of 25',
'This pack of 25 Flat Bar Folders by Exacompta is ideal for keeping work and projects protected and organised in offices, at school or at home, whilst adding a sophistication and style. The flat bar mechanism can securely hold up to 100 sheets, between the polypropylene back cover and the transparent front cover. The transparent front cover allows for easy viewing the contents.',
18,
'craftshopimg/Exacompta FlatBarFolders.jpg',
55,
1,
CURRENT_TIMESTAMP,
39,
3),
('eco eco 6 Colour Dividers A4 Pack of 12',
'These eco eco A4 Dividers come in a pack of 12 and are ideal for organising paperwork into ring binders and files. These dividers are made from 50% recycled materials and are 100% recyclable, perfect for eco-friendly filing! The dividers in this pack are a strong 200 micron and are numbered 1 to 12 with a contents page that can be used for easy referencing, they are perfect for use in the office, in school, university or at home.',
20,
'craftshopimg/DividerA4.jpg',
102,
1,
CURRENT_TIMESTAMP,
40,
9),
('UHU Power Glue',
'UHU Power Glue is a multi-purpose, heavy duty clear adhesive. It can be used on a wide variety of materials, including wood, leather, paper and fabric. UHT Power Glue is a powerful water-resistant adhesive, idea for household and office repairs.',
6,
'craftshopimg/UHU.png',
554,
1,
CURRENT_TIMESTAMP,
41,
4),
('Helix Oxford Scissors',
'These traditional style Helix Oxford 17cm scissors with ambidextrous handles are made of 79 percent recycled material and stainless steel blades. Premium quality scissors ideal for school or at home.',
3,
'craftshopimg/HelixScissors.png',
25,
1,
CURRENT_TIMESTAMP,
42,
1),
('Rapesco X5-30 Eco Less Effort 2 Hole Punch',
'The Rapesco X5-30 Eco Hole Punch offers durable metal working parts, a heavy duty cutter and a convenient handle lock down for easier storage. This can punch holes in up to 30 sheets at a time and is fitted with a flip open confetti tray for quick and easy emptying. This Rapesco Hole punch is designed with new technology allowing you to punch more sheets of paper whilst using 60% less force.',
20,
'craftshopimg/HolePunch.jpg',
67,
1,
CURRENT_TIMESTAMP,
43,
5),
('3M Scotch Magic Tape',
'This Scotch Magic Tape disappears on white paper for a professional finish. Ideal for home and office use, and wrapping gifts, this is a high quality clear tape.',
10,
'craftshopimg/ScotchMagicTape.jpg',
321,
1,
CURRENT_TIMESTAMP,
44,
11),
('Scotch Tape Dispenser and Tape',
'3M Scotch Magic Tape Dispenser is a handy, compact dispenser ideal for desktop use in the home and office. This Scotch tape dispenser comes with one roll of Magic Tape, which disappears on white paper for a professional finish. This handy scotch magic tape dispenser is ideal for use in the office or home.',
22,
'craftshopimg/ScotchTapeDispenser.png',
127,
1,
CURRENT_TIMESTAMP,
45,
2),
('Rexel Eco Desk Stapler Compact',
'The Rexel Stapler is a quality, compact stapler perfect for use in the home, office, school or for the study. This half strip top loading stapler has a sturdy plastic body and the top part is made from recycled material making it a comfortable and reliable handheld and desktop stapler. This handy stapler has an easy load mechanism where you load half a strip of 26/6 (No 56) staples or 24/6 (No 16)',
24,
'craftshopimg/DeskStapler.jpg',
23,
1,
CURRENT_TIMESTAMP,
46,
5),
('Rapesco 26/6mm Galvanised Staples',
'These Rapesco 26/6mm galvanised staples are made to exacting standards from premium quality materials, and offer optimum performance for the most accurate stapling time after time. Box of 5000, 26/6mm staples.',
10,
'craftshopimg/GalvanisedStaples.png',
87,
1,
CURRENT_TIMESTAMP,
47,
8),
('Ryman Paperclips Pack of 1000',
'These Ryman Assorted Paperclips are a pack of 1000 and are an ideal way of keeping papers and documents together. The Paperclips are a 31mm assorted colour fastener and are packed in 1000 are great for securely holding paper without the need to punch holes in your documents. The clips are perfect for students, everyday large or small office and home use.',
5,
'craftshopimg/Paperclips.png',
455,
1,
CURRENT_TIMESTAMP,
48,
9),
('Ryman Push Pins Pack of 250',
'This is a pack of 250 Ryman Push Pins in assorted colours, ideal for use on notice boards or corkboards. These push pins are stronger than normal drawing pins, while their plastic moulding is easy to grip. Ryman Push Pins are ideal for everyday home and office use.',
5,
'craftshopimg/PushPins.png',
563,
1,
CURRENT_TIMESTAMP,
49,
9),
('Helix Ruler 30cm Steel',
'The Helix steel ruler is a safe, robust aid to precision cutting and drawing. With a cork underside to prevent slipping, this metal ruler is ideal for drawing, scoring, and cutting.',
24,
'craftshopimg/HelixRuler.png',
200,
1,
CURRENT_TIMESTAMP,
50,
8),
('Helix Oxford Compass',
'This Oxford Metal Compass comes complete with a mini pencil and is ideal for students. This is a self centring bow-top compass that has a metal finish and a secure lock for holding the pencil in place.  Featuring a self-centring mechanism and a shortened safety point making this compass ideal for use in schools.',
9,
'craftshopimg/HelixOxfordCompass.png',
198,
1,
CURRENT_TIMESTAMP,
51,
8),
('Linex Adjustable Set Square 1120 10B',
'This Linex adjustable set square is ideal for students or anyone needing to produce accurate technical drawings. It has a plain edge, a tracing edge and a bevelled edge for smudge free use with ink. The graduated arch, manufactured in one part with the arm, is precision divided in half degrees, tangent and secant.',
3,
'craftshopimg/SetSquare.png',
44,
1,
CURRENT_TIMESTAMP,
52,
11),
('Casio MS-8B Semi Desk Calculator',
'The MS-8B has a large and clear 8 digit angled display . Dual powered (Solar with Battery Backup) it performs all the main functions to include Tax, Currency, Mark up, function command signs ,3 Digit comma markers and 4 constants.  The display is tilted to give an easy viewing angle and it has an auto power off function.',
55,
'craftshopimg/DeskCalculator.png',
61,
1,
CURRENT_TIMESTAMP,
53,
5),
('Casio Advanced Scientific Calculator FX-991EX',
'This Casio advanced calculator is allowed in EVERY exam where a scientific calculator can be used. With 550 functions including spreadsheet calculations for the first time on a calculator this is a must for education. This calculator is for use in the new core AS and A-Level examinations.  Ideal for use when studying for GCSEs and above.',
75,
'craftshopimg/ScientificCalculator.jpg',
69,
1,
CURRENT_TIMESTAMP,
54,
5),
('Xbox Backpack',
'Go back to school in style with this Xbox Backpack. This bag features a super cool Xbox design to stand out from the crowd along with plenty of compartments for keeping clothes, lunch boxes and more! Keep your uniform, swim kit, notepads and other items safely tucked away in the main zipped compartment and your pencils case along with other bits in the side pockets and the front zipped compartment.',
137,
'craftshopimg/ScientificCalculator.jpg',
274,
0,
CURRENT_TIMESTAMP,
34,
5),
('Casio MH-12-WE Digit Large Semi Desk Calculator',
'This Casio MH-12 calculator combines battery power with a dual solar panel for extra back up. Ideal for calculating sums, percentages and more.',
60,
'craftshopimg/DeskCalculatorWhite.jpg',
12,
0,
CURRENT_TIMESTAMP,
53,
11)