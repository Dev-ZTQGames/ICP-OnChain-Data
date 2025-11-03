dfx deploy --playground N3QE_ledger --argument "(variant {Init =
record {
     token_symbol = \"N3QE\";
     token_name = \"Nebula3 Quantum Energy\";
     decimals = opt 0;
     minting_account = record { owner = principal \"f5cpz-l4luj-4itie-wjifk-lfxot-x5uck-yaccc-3mjte-sg7jj-b6tz4-pqe\" };
     transfer_fee = 0;
     metadata = vec {};
     feature_flags = opt record{icrc2 = true};
     initial_balances = vec {};
     archive_options = record {
         num_blocks_to_archive = 1000;
         trigger_threshold = 2000;
         controller_id = principal \"pi5f5-wa6q7-y2zcs-4nqx7-veomh-k3rqy-bpii6-54d47-iix3c-hh3nx-pae\";
         cycles_for_archive_creation = opt 10000000000000;
     };
 }
})"

