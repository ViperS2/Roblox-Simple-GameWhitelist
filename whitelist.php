<?php
// join to discord.gg/rippers
//  list of whitelisted game IDs
$whitelist = array(
    'game_id_1',
    'game_id_2',
    'game_id_3',
    // Add more game IDs as needed
);

$gameIdToCheck = $_GET['game_id'];

// Check if the game ID is in the whitelist
if (in_array($gameIdToCheck, $whitelist)) {
    echo "game whitelisted";
} else {
    echo "game not whitelisted";
}
?>