function onCreate()
	-- background shit
	makeLuaSprite('bg', 'happyend/Background1', 0, 0);
	setLuaSpriteScrollFactor('bg', 1, 1);

	makeAnimatedLuaSprite('boomboxes', 'happyend/boomboxes1', -600, 290);
	luaSpriteAddAnimationByPrefix('boomboxes', 'Boomboxes', 'Boomboxes'); 
	setLuaSpriteScrollFactor('boomboxes', 1, 1);
	
	makeLuaSprite('firecanons', 'happyend/firecanons1', 1300, 1000);
	setLuaSpriteScrollFactor('firecanons', 1, 1);

	makeAnimatedLuaSprite('crowd', 'happyend/people1', 0, 600);
	luaSpriteAddAnimationByPrefix('crowd', 'stagecrowd', 'stagecrowd');
	setLuaSpriteScrollFactor('crowd', 1, 1);

	makeAnimatedLuaSprite('mahlokie', 'happyend/loki1', 900, 800);
	luaSpriteAddAnimationByPrefix('mahlokie', 'Loki1', 'Loki1');
	setLuaSpriteScrollFactor('mahlokie', 1, 1);

	makeLuaSprite('theLight', 'happyend/Light1', 0, 0);
	setLuaSpriteScrollFactor('theLight', 1, 1);

	addLuaSprite('bg', false);
	addLuaSprite('crowd', false);
	addLuaSprite('mahlokie', false);
	addLuaSprite('boomboxes', false);
	addLuaSprite('firecanons', false);
	addLuaSprite('theLight', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end