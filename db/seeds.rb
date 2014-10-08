# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
wines = Wine.create([
  {vintage: '', country: 'France', region: 'Champagne', purveyor: 'Cumieres-Geoffroy "Expression Brut', grape: 'Pinot Meunier Blend', style: 'Sparkling', btg: '', btb: '99', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: 'France', region: 'Champagne', purveyor: 'Vallee de la Marne-Bourdaire Gallois Brut', grape: 'Pinot Meunier', style: 'Sparkling', btg: '15', btb: '70', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: 'France', region: 'Burgundy', purveyor: 'Val de Mer Brut Nature Rose', grape: 'Pinot Noir', style: 'Sparkling', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: 'Italy', region: 'Veneto', purveyor: 'Prosecco-Primaterra', grape: 'Glera', style: 'Sparkling', btg: '8', btb: '35', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'California', region: 'Napa Valley', purveyor: 'Arnot Roberts "Watson Ranch"', grape: 'Chardonnay', style: 'White', btg: '', btb: '89', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2005', country: 'France', region: 'Burgundy', purveyor: 'Pernanad-Vergelesses-Dubreuil-Fontaine', grape: 'Chardonnay', style: 'White', btg: '', btb: '78', menuable_type: 'Menu', menuable_id: '3', user_id: '3'}, ])
  {vintage: '2012', country: 'France', region: 'Burgundy', purveyor: 'Chablis-P.Puize "Terroir Decouverte"', grape: 'Chardonnay', style: 'White', btg: '', btb: '64', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'France', region: 'Loire-Pouilly-Fume', purveyor: ' Domaine de BelAir', grape: 'Sauvignon Blanc', style: 'White', btg: '11', btb: '50', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'France', region: 'Loire', purveyor: 'Jasnieres-Domaine le Briseau "Kharakter"', grape: 'Chenin Blanc', style: 'White', btg: '', btb: '83', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2009', country: 'France', region: 'Alsace', purveyor: 'Domaine Weinbach "Cuvee Theo"', grape: 'Gewurtztraminer', style: 'Wine', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'California', region: 'Napa Valley', purveyor: 'Massicaan', grape: 'Chardonnay', style: 'White', btg: '15', btb: '70', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2013', country: 'Germany', region: 'Rhienhessen-Kruger-Rumpf', purveyor: '"Binger Scharlachberg" Spatlese', grape: 'Riesling', style: 'White', btg: '13', btb: '60', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'Oregon', region: 'Willamette Valley', purveyor: 'Dundee Hills-Eyerie', grape: 'Chardonnay', style: 'White', btg: '13', btb: '60', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2013', country: 'Greece', region: 'Santorini', purveyor: 'Domaine Sigalas', grape: 'Assyrtiko', style: 'White', btg: '11', btb: '50', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'California', region: 'Carneros-Ryme', purveyor: 'Las Brisas Vineyard', grape: 'Vermintino', style: 'White', btg: '', btb: '64', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'California', region: 'Napa Valley', purveyor: 'Carneros Franciscan "Cuvee Sauvage"', grape: 'Chardonnay', style: 'White', btg: '10', btb: '45', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'California', region: 'Sonoma', purveyor: 'Scribe "Ode to Emil No. 11"', grape: 'Sylvaner', style: 'White', btg: '', btb: '68', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'France', region: 'Loire-Vouvray', purveyor: 'Domaine Huet "Clos du Bourg"', grape: 'Chenin Blanc', style: 'White', btg: '15', btb: '70', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2013', country: 'Austria', region: 'Kremstal-Nigl', purveyor: 'Seftenberger Piri', grape: 'Gruner Veltliner', style: 'White', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '1996', country: 'Germany', region: 'Rheingau-Schloss', purveyor: 'Shornborn "Domdecahney" Spatlese', grape: 'Reisling', style: 'White', btg: '', btb: '95', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2010', country: 'France', region: 'Alsace', purveyor: 'Marc Tempe Zellenberg', grape: 'Pinot Blanc', style: 'White', btg: '14', btb: '65', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2012', country: 'Italy', region: 'Friuli-Venezia', purveyor: 'Scarpetta', grape: 'Pinot Grigio', style: 'White', btg: '9', btb: '40', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '2005', country: 'France', region: 'Alsace', purveyor: 'A. Boxler "Brands"', grape: 'Pinot Gris', style: 'Workout', btg: '', btb: '99', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},
  {vintage: '', country: '', region: '', purveyor: '', grape: '', style: '', btg: '', btb: '', menuable_type: 'Menu', menuable_id: '3', user_id: '3'},

 
# tastes = Taste.create([
#   {flavor: 'White', style: 'White'},
#   {flavor: 'Dry White', style: 'White'},
#   {flavor: 'Light', style: 'White'},
#   {flavor: 'Grapefruit', style: 'White'},
#   {flavor: 'Floral', style: 'White'},
#   {flavor: 'Citrus', style: 'White'},
#   {flavor: 'Lemon', style: 'White'},
#   {flavor: 'Herbal', style: 'White'},
#   {flavor: 'Grassy', style: 'White'},
#   {flavor: 'Rich', style: 'White'},
#   {flavor: 'Creamy', style: 'White'},
#   {flavor: 'Nutty', style: 'White'},
#   {flavor: 'Medium', style: 'White'},
#   {flavor: 'Perfume', style: 'White'},
#   {flavor: 'Sweet', style: 'White'},
#   {flavor: 'Tropical', style: 'White'},
#   {flavor: 'Honey', style: 'White'},
#   {flavor: 'Off-Dry', style: 'White'},
#   {flavor: 'Apricots', style: 'White'},
#   {flavor: 'Peaches', style: 'White'},
#   {flavor: 'Red', style: 'Red'},
#   {flavor: 'Fruity', style: 'Red'},
#   {flavor: 'Dry', style: 'Red'},
#   {flavor: 'Herbal', style: 'Red'},
#   {flavor: 'Sweet', style: 'Red'},
#   {flavor: 'Black Cherry', style: 'Red'},
#   {flavor: 'Raspberry', style: 'Red'},
#   {flavor: 'Blueberry', style: 'Red'},
#   {flavor: 'Blackberry', style: 'Red'},
#   {flavor: 'Strawberry', style: 'Red'},
#   {flavor: 'Cherry', style: 'Red'},
#   {flavor: 'Tart Cherry', style: 'Red'},
#   {flavor: 'Cranberry', style: 'Red'},
#   {flavor: 'Soft', style: 'Red'},
#   {flavor: 'Juicy', style: 'Red'},
#   {flavor: 'Tannic', style: 'Red'},
#   {flavor: 'Spicy', style: 'Red'},
#   {flavor: 'Clay', style: 'Red'},
#   {flavor: 'Cured Meats', style: 'Red'},
#   {flavor: 'Truffle', style: 'Red'},
#   {flavor: 'Forest', style: 'Red'},
#   {flavor: 'Smoke', style: 'Red'},
#   {flavor: 'Tobacco', style: 'Red'},
#   {flavor: 'Leather', style: 'Red'},
#   {flavor: 'Black Pepper', style: 'Red'},
#   {flavor: 'Gravel', style: 'Red'},
#   {flavor: 'Rose', style: 'Rose'},
#   {flavor: 'Off-Dry', style: 'Rose'},
#   {flavor: 'Dry', style: 'Rose'},
#   {flavor: 'Herbal', style: 'Rose'},
#   {flavor: 'Savory', style: 'Rose'},
#   {flavor: 'Fruity', style: 'Rose'},
#   {flavor: 'Floral', style: 'Rose'},
#   {flavor: 'Sparkling', style: 'Sparkling'},
#   {flavor: 'White Sparkling', style: 'Sparkling'},
#   {flavor: 'Red Sparkling', style: 'Sparkling'},
#   {flavor: 'Rose Sparkling', style: 'Sparkling'},
#   {flavor: 'Dry', style: 'Sparkling'},
#   {flavor: 'Creamy', style: 'Sparkling'},
#   {flavor: 'Rich', style: 'Sparkling'},
#   {flavor: 'Light', style: 'Sparkling'},
#   {flavor: 'Citrus', style: 'Sparkling'},
#   {flavor: 'Off-Dry', style: 'Sparkling'},
#   {flavor: 'Floral', style: 'Sparkling'},
#   {flavor: 'Sweet', style: 'Sparkling'},
#   {flavor: 'Apricots', style: 'Sparkling'},
#   {flavor: 'Raspberry', style: 'Sparkling'},
#   {flavor: 'Blueberry', style: 'Sparkling'},
#   {flavor: 'Cherry', style: 'Sparkling'},
#   {flavor: 'Orange', style: 'Sparkling'},
#   {flavor: 'Strawberry', style: 'Sparkling'},
#   {flavor: 'Dessert', style: 'Dessert'},
#   {flavor: 'Nutty', style: 'Dessert'},
#   {flavor: 'Oxidized', style: 'Dessert'},
#   {flavor: 'Fortified', style: 'Dessert'},
#   {flavor: 'Off-Dry', style: 'Dessert'},
#   {flavor: 'Almond', style: 'Dessert'},
#   {flavor: 'Sweet Hazlenut', style: 'Dessert'},
#   {flavor: 'Sweet', style: 'Dessert'},
#   {flavor: 'Red Fortified', style: 'Dessert'},
#   {flavor: 'White Fortified', style: 'Dessert'},
# ])