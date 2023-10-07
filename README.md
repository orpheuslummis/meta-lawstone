# meta-lawstone

Small Prolog meta interpreter

How to run:

```
okp4d query logic ask \
--node https://api.testnet.okp4.network:443/rpc \
--program-file meta.pl "solve(can_vote(X))."
```