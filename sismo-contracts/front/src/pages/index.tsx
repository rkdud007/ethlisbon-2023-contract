import { exec } from "child_process";
import { useRouter } from "next/router";
import { useEffect } from "react";

export default function Home() {
  const router = useRouter();

  return (
    <div className="container">
      <h1>Check the gaurdian caller is eligible</h1>
      <section>
        <ul>
          <li onClick={() => router.push("/execute-inheritance")}>
            <h3>Execute inheritance</h3>
            {/* replace with the title below */}
            {/* <h3>Claim an airdrop anonymously</h3>
            <p>Sign an address with Sismo Connect where you wish to receive the airdrop</p> */}
          </li>
        </ul>
      </section>
    </div>
  );
}
