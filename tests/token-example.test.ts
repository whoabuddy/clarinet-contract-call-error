import { initSimnet } from "@hirosystems/clarinet-sdk";
import { Cl } from "@stacks/transactions";
import { describe, expect, it } from "vitest";

const simnet = await initSimnet();
const accounts = simnet.getAccounts();
const deployer = accounts.get("deployer")!;

describe("example tests", () => {
  it("mints tokens", () => {
    const receipt = simnet.callPublicFn(
      `${deployer}.token-example`,
      "mint",
      [Cl.uint(100), Cl.principal(deployer)],
      deployer
    );
    expect(receipt.result).toBeOk(Cl.bool(true));
  });
});
