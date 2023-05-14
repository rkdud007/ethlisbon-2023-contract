## Bachlaha Wallet - supporting secure and user-friendly feature like Inheritance

Bacalaha is a account abstraction wallet designed to manage their keys in session key and enabling seamless inheritance of assets so that it lowers the barrier of crypto wallet usage to public✨

## What is Bachlaha Inheritance wallet?

Bacalaha is a self-custodial crypto wallet designed to address the challenges faced by users in managing their keys and enabling seamless inheritance of assets. By leveraging `Cartridge-Controller`'s webAuth for key handling and implementing an inheritance mechanism, Bacalaha ensures secure and hassle-free asset transfer, even in the event of key loss or the user's demise.

## Resources

Bacalaha core contract (w/ gaurdian contract) - https://github.com/kariy/inheritance-contract/tree/28ed0705bd1320a7651f33857afbb2e7fd2dc54e

Bacalaha core frontend - https://github.com/rkdud007/eth-lisbon-2023-frontend

Sismo connect integration - https://github.com/rkdud007/ethlisbon-2023-contract/tree/main/sismo-contracts

## Technical Flow

<a href="https://ibb.co/8Bp9ymT"><img src="https://i.ibb.co/Jd4HYc0/photo-2023-05-14-07-09-07.jpg" alt="photo-2023-05-14-07-09-07" border="0"></a><br /><a target='_blank' href='https://freeonlinedice.com/'></a><br />

### Initialization Process

Create Wallet

- Users generate a wallet and securely store the session key on other devices like a phone or USB.

Configure Inheritance:

- Users set up inheritance settings, specifying the duration of inactivity required to activate inheritance and defining the eligibility criteria for inheritance activation.

---

### Inheritance Activation Process:

Caller Eligibility Verification

- When an eligible person intends to activate inheritance, the caller's eligibility is `validated on-chain using the Sismo connect`.

Wallet Inactivity Check

- The system checks if the target wallet has remained inactive for the specified duration. This is done by comparing nonces between two block numbers. To verify the inactivity duration, Bacalaha utilizes the `account nonce storage proof provided by Heorodotus`.

Inheritance Execution

- If the caller is deemed eligible and the wallet has been inactive for the required duration, the inheritance is executed through the smart contract, securely transferring ownership of the assets.

---

## Conclusion

By incorporating webAuth for key management and implementing an inheritance feature, Bacalaha provides users with a secure and convenient solution for managing their crypto assets, ensuring that even in unforeseen circumstances, their assets can be seamlessly transferred to the designated inheritors.
