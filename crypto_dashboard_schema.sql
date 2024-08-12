CREATE TABLE cryptocurrencies (
    id SERIAL PRIMARY KEY,
    coingecko_id VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    current_price DECIMAL, 
    market_cap DECIMAL,
    volume DECIMAL,
    circulating_supply DECIMAL, 
    total_supply DECIMAL,
    max_supply DECIMAL,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE historical_data (
    id SERIAL PRIMARY KEY,
    cryptocurrency_id INT REFERENCES cryptocurrencies(id), 
    date DATE NOT NULL, 
    price DECIMAL, 
    market_cap DECIMAL,
    volume DECIMAL, 
    UNIQUE(cryptocurrency_id, date)
); 