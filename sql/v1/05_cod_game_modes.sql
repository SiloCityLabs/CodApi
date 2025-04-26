CREATE TABLE
    cod_game_modes (
        game_id INTEGER NOT NULL,
        mode_id INTEGER NOT NULL,
        PRIMARY KEY (game_id, mode_id),
        FOREIGN KEY (game_id) REFERENCES cod_games (id) ON DELETE CASCADE,
        FOREIGN KEY (mode_id) REFERENCES cod_modes (id) ON DELETE CASCADE
    );

-- Add indexes for faster lookups (recommended)
CREATE INDEX idx_game_id ON cod_game_modes (game_id);

CREATE INDEX idx_mode_id ON cod_game_modes (mode_id);