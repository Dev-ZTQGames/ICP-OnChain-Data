# ICP Index & Ledger Canister

## Overview
This project contains two main canisters designed for **Nebula3GameFi**, as well as games under these platforms:

1. **Index Canister** – Centralized index that collects and stores user interaction data and token-related events across the platform.  
2. **Ledger Canister** – Official ICP Ledger for minting, burning, and transferring platform tokens with memo support.

The system provides a scalable, auditable, and secure way to store game user interactions and token operations on-chain.

> **Platform Use Case:** Records and indexes user activities such as login, logout, task completion, in-game item purchases, etc.  
> Data is collected every **5 minutes**, covering the previous 5 minutes of activity, and then pushed on-chain.

## Features

### Index Canister
- **User & Token Indexing** – Stores all registered users and their token balances.  
- **Metadata Tracking** – Tracks token or NFT metadata for each user or event.  
- **Event Logging** – Supports logging events such as `mint`, `burn`, and `transfer`.  
- **Query Interface** – Provides read-only queries for frontend apps or other canisters.

### Ledger Canister
- **ICP Token Ledger** – Implements the ICP Ledger standard interface for sending, receiving, and minting tokens.  
- **Standard Ledger Operations**:
  - `transfer(to, amount)` – Send ICP tokens to another principal.  
  - `mint(to, amount)` – Mint new tokens (admin only).  
  - `burn(from, amount)` – Burn tokens from a specific account (admin only).  
- **Event Logging** – Emits events for all ledger operations for auditing and verification.  
- **Integration with Index Canister** – Ledger operations can update the index canister to maintain synchronized state.

## Permissions & Security
- **Standard ICP Ledger**: All other operations follow ICP default permissions.  
- **Auditability**: Every mint and burn operation includes a memo for clear event tracing.  
- **Secure**: Only authorized principals can perform sensitive operations; read-only queries are publicly accessible.  

## Technology Stack
- **Language**: Motoko / Rust  
- **Frameworks / Libraries**:
  - `ic-cdk` / `ic-cdk-actor` (Motoko or Rust)  
  - ICP Ledger standard interfaces (`ledger.did`)  
- **Deployment**: DFX SDK (Internet Computer Developer Environment)

## Key Features
- **Audit-Ready** – All state-changing operations emit events for transparency and traceability.  
- **Composable** – Other canisters can query the index canister for user or token data.  
- **Secure** – Only authorized principals (admin/owner) can perform mint and burn operations.  
- **Testable** – Fully supports local DFX testing, including simulated ICP tokens and user principals.

## Supported Networks
- **ICP Mainnet**  
- **ICP Testnet / Local Replica**
