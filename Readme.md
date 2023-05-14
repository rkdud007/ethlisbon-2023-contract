## Bachlaha Wallet - supporting secure and user-friendly feature like Inheritance

---

Bacalaha is a account abstraction wallet designed to manage their keys in session key and enabling seamless inheritance of assets so that it lowers the barrier of crypto wallet usage to public✨

---

## Problem that we are solving

The biggest barrier to crypto wallet adoption is the handling of private keys, with challenges arising when owners forget their keys or face unexpected circumstances like death. Existing wallet solutions lack user-friendly approaches to address these issues, hindering seamless wallet usage and asset management.

---

## Then, what is Bachlaha Inheritance wallet?

Bacalaha handle this problem using account-abstraction that supports inheritance feature, which can able to get inherited if satisfied eligibility and inactivated for certain period.

By leveraging `Cartridge-Controller`'s webAuth for key handling, Bacalaha ensures secure and user-friendly way to handle key. And implemented inheritance feature as plugin.

---

## Resources

Bacalaha core contract (w/ gaurdian contract) - https://github.com/kariy/inheritance-contract/tree/28ed0705bd1320a7651f33857afbb2e7fd2dc54e

Bacalaha core frontend - https://github.com/rkdud007/eth-lisbon-2023-frontend

Sismo connect integration - https://github.com/rkdud007/ethlisbon-2023-contract/tree/main/sismo-contracts

---

## Technical Flow

<a href="https://ibb.co/8Bp9ymT"><img src="https://i.ibb.co/Jd4HYc0/photo-2023-05-14-07-09-07.jpg" alt="photo-2023-05-14-07-09-07" border="0"></a><br /><a target='_blank' href='https://freeonlinedice.com/'></a><br />

## Initialization Process

### Create Wallet

- Users generate a wallet and securely store the session key on other devices like a phone or USB.

### Configure Inheritance:

- Users set up inheritance settings, specifying the duration of inactivity required to activate inheritance and defining the eligibility criteria for inheritance activation.

---

## Inheritance Activation Process:

### Caller Eligibility Verification

- When an eligible person intends to activate inheritance, the caller's eligibility is `validated on-chain using the Sismo connect`.

### Wallet Inactivity Check

- The system checks if the target wallet has remained inactive for the specified duration. This is done by comparing nonces between two block numbers. To verify the inactivity duration, Bacalaha utilizes the `account nonce storage proof provided by Heorodotus`.

### Inheritance Execution

- If the caller is deemed eligible and the wallet has been inactive for the required duration, the inheritance is executed through the smart contract, securely transferring ownership of the assets.

---

## Future Improvement

Right at this moment Heoroduts don't support Evm <> Evm (but coming soon), and Sismo Connect is only available in EVM. So in this project, we implemented group eligibility logic into Solidity contract and account nonce storage proof into Cairo contract. So in future, we can implement full execute_inheritance function into solidity and validate two conditions in one function.

---
