// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

/// @title Contrat minimal avec messages publics
contract ShoutOut {
    // Event léger pour enregistrer les messages
    event NewMessage(address indexed sender, string message, uint256 timestamp);

    /// @notice Fonction pour envoyer un message public
    /// @param message Le texte du message
    function shout(string calldata message) external {
        // Émet l'event (transaction on-chain)
        emit NewMessage(msg.sender, message, block.timestamp);
    }
}
