# 📘 PayNova Whitepaper NFT (PNWP)

**PayNova Whitepaper NFT (PNWP)** is an ERC-721 collectible minted by users to prove access and engagement with the official **PayNova Hybrid Payments Infrastructure Whitepaper**.

The NFT serves as a verifiable digital artifact representing the document describing **PayNova — a next‑generation hybrid payments ecosystem integrating remittances, Mastercard functionality, and decentralized finance.**

---

## 🧩 Contract Overview

| Property | Value |
|---------|-------|
| **Name** | PayNova Whitepaper NFT |
| **Symbol** | PNWP |
| **Standard** | ERC‑721 |
| **Supply Type** | Unlimited (1 claim per wallet) |
| **Transferability** | Transferable (soulbound version optional) |
| **Mint Method** | Free mint via `claim()` |
| **Admin Keys** | None (no owner or privileged functions) |
| **Metadata** | Static metadata on IPFS |
| **Project Website** | https://pay-nova.org/ |
| **PAYN Token** | https://bscscan.com/token/0xea706e99170e2a0045c80cafa06a2790e2783dd0 |

---

## 📄 Whitepaper NFT Purpose

The PayNova Whitepaper NFT is intended as:

- ✔ A collectible proof of whitepaper access  
- ✔ A badge for early adopters of PayNova  
- ✔ A transparent, immutable record stored on-chain  
- ✔ A tool for future gated content or community rewards  

This NFT does **not** grant governance or financial rights.

---

## 📁 Metadata (IPFS)

### Metadata CID:

```
ipfs://Qmdb9fQU3V9s7wsADZk5fBAqKkEb45feqykcRzEa2gNRno
```

### Metadata JSON:

```json
{
  "name": "PayNova Whitepaper",
  "description": "Official PayNova hybrid payments infrastructure whitepaper, claimable as an NFT.",
  "image": "ipfs://bafybeibk6pujryevpwnbue7u23swjyaajjqrtpuhke6jcj4tyu3s436rae",
  "external_url": "https://pay-nova.org/",
  "attributes": [
    { "trait_type": "Document", "value": "Whitepaper" },
    { "trait_type": "Project", "value": "PayNova" },
    { "trait_type": "Type", "value": "Hybrid Payments" }
  ]
}
```

### Whitepaper PDF (IPFS Gateway)

```
https://sapphire-official-aardvark-671.mypinata.cloud/ipfs/bafybeibk6pujryevpwnbue7u23swjyaajjqrtpuhke6jcj4tyu3s436rae
```

---

## 📜 Smart Contract

The contract includes:

- Unlimited total supply  
- One claim per wallet  
- No owner / no admin control  
- Immutable logic  
- OpenZeppelin ERC‑721 foundation  

### Key Functions

- `claim()` – mints one NFT to the caller  
- `tokenURI()` – returns metadata stored on IPFS  
- `totalMinted()` – returns number of unique claimants  

---

## 🛠 Deployment

### Hardhat Deployment Example

```bash
npx hardhat run scripts/deploy_whitepaper.js --network bsc
```

### Example Deploy Script

```javascript
async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying with:", deployer.address);

  const NFT = await ethers.getContractFactory("PayNovaWhitepaperNFT");
  const contract = await NFT.deploy();

  await contract.deployed();
  console.log("PayNovaWhitepaperNFT deployed at:", contract.address);
}

main();
```

---

## 🎨 Use Cases

- Community verification  
- Early‑supporter collectible  
- Whitepaper access badge  
- Claim‑to‑mint onboarding tool  
- Document authenticity reference  

---

## 🔗 Related PayNova Resources

### PAYN Token Repository  
https://github.com/PayNovaDevs/PAYN

### Website  
https://pay-nova.org/

### X (Twitter)  
https://x.com/PayNovaTeam

---

## 🔐 Security Notes

- No owner or privileged roles  
- No upgradeability  
- Simple, verifiable, immutable logic  
- Minimal attack surface  

---

## 🏆 License

Released under **MIT License**.

---

## 💬 Contact


Co‑Founder & CTO – PayNova  
📧 info@pay-nova.org  
