blockInPlay = false;
loadedBlock = 0;
blockWidth = 0;
blockHeight = 0;
curBlock = 0;
lastRotation = 0;
gameOver = false;
firstCall = true;
mainText = "";

temp_block = 0; // for switching blocks
gameOverX = display_get_gui_width() / 2;
gameOverY = display_get_gui_height() / 2;
stage = 0;
//global.tetrisGridSize = 32;
global.fallSpeed = 30;

randomize();