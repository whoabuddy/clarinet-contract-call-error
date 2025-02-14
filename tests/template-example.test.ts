import { Cl } from "@stacks/transactions";
import { describe, expect, it } from "vitest";

const accounts = simnet.getAccounts();
const address1 = accounts.get("wallet_1")!;

/*
  The test below is an example. To learn more, read the testing documentation here:
  https://docs.hiro.so/stacks/clarinet-js-sdk
*/

describe("example tests", () => {
  it("works when we call the proxy directly", () => {
    const receipt = simnet.callPublicFn(
      `${address1}.template-example`,
      "mint",
      [Cl.uint(100), Cl.principal(address1)],
      address1
    );
    expect(receipt.result).toBeOk(Cl.bool(true));
  });
  it("fails when we call the proxy that uses a constant", () => {
    const receipt = simnet.callPublicFn(
      `${address1}.template-example`,
      "mint",
      [Cl.uint(100), Cl.principal(address1)],
      address1
    );
    expect(receipt.result).toBeErr(Cl.uint(1));
  });
});
