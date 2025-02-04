import { buildModule } from '@nomicfoundation/hardhat-ignition/modules';

const VotingModule = buildModule("Votingmodule", (m) => {
    const voting = m.contract("Voting", [["Alice", "Bob", "Charlie"]]);
    return { voting };
    
});

export default VotingModule;