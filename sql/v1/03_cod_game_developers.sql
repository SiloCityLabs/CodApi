CREATE TABLE
    cod_game_developers (
        game_id INTEGER NOT NULL,
        developer_id INTEGER NOT NULL,
        PRIMARY KEY (game_id, developer_id),
        FOREIGN KEY (game_id) REFERENCES cod_games (id) ON DELETE CASCADE,
        FOREIGN KEY (developer_id) REFERENCES cod_developers (id) ON DELETE CASCADE
    );

-- Add indexes for faster lookups (recommended)
CREATE INDEX idx_game_id ON cod_game_developers (game_id);

CREATE INDEX idx_developer_id ON cod_game_developers (developer_id);