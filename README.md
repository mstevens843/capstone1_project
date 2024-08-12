# Cryptocurrency Market Dashboard

## Overview
This project is a simple cryptocurrency dashboard that provides real-time and historical data for selected
cryptocurrencies. 
It uses CoinGecko API to fetch data on prices, marketcap, and historical data. 


### Features 
- **Real-Time CryptoCurrency Data**: Display current prices and market cap for selected cryptocurrencies.
- **Historical Data**: View historical price data for cryptos. 
- **User Interface**: Concise and clean interface to browse and search for crypto info. 

## Technologies Used 
- **Backend**: Python with Flask
- **Database**: PostgreSQL with SQLAlchemy 
- **Frontend**: HTML, CSS, JavaScript 
- **API**: CoinGecko API
- **Hosting**: Heroku(or Render)


## Database Schema 

### Tables 

- **cryptocurrencies**
- `id` (SERIAL, Primary_key)
- `coingecko_id` (VARCHAR(50), Unique, Not Null)
- `name` (VARCHAR(255), Not Null)
- `symbol` (VARCHAR(10), Not Null)
- `current_price` (DECIMAL)
- `market_cap`(DECIMAL)
- `volume` (DECIMAL)
- `last_updated` (TIMESTAMP, Default: CURRENT_TIMESTAMP)

- **historical data**
- `id` (SERIAL, Primary_key)
- `cryptocurrency_id` (INT, Foreign Key)
- `date` (DATE, Not Null)
- `price` (DECIMAL)
- UNIQUE (`cryptocurrency_id`, `date`)

## Setup

1. **Clone Repository**
```bash 
git 