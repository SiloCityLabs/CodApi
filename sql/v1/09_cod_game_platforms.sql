CREATE TABLE
    cod_game_platforms (
        game_id INTEGER NOT NULL,
        platform_id INTEGER NOT NULL,
        PRIMARY KEY (game_id, platform_id),
        FOREIGN KEY (game_id) REFERENCES cod_games (id) ON DELETE CASCADE,
        FOREIGN KEY (platform_id) REFERENCES cod_platforms (id) ON DELETE CASCADE
    );

-- Add indexes for faster lookups (recommended)
CREATE INDEX idx_game_id ON cod_game_platforms (game_id);

CREATE INDEX idx_platform_id ON cod_game_platforms (platform_id);