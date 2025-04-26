CREATE TABLE
    cod_game_engines (
        game_id INTEGER NOT NULL,
        engine_id INTEGER NOT NULL,
        PRIMARY KEY (game_id, engine_id),
        FOREIGN KEY (game_id) REFERENCES cod_games (id) ON DELETE CASCADE,
        FOREIGN KEY (engine_id) REFERENCES cod_engines (id) ON DELETE CASCADE
    );

-- Add indexes for faster lookups (recommended)
CREATE INDEX idx_game_id ON cod_game_engines (game_id);

CREATE INDEX idx_engine_id ON cod_game_engines (engine_id);