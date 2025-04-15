# cryfs-based-secure-vault-linuc
a very basic secure vault based on cryfs encryption tool which can be used to encrypt any files or folders etc. 


first install the cryfs tool 
```sudo dnf install cryfs -y```

to check the version 
```cryfs --version```

Make a folder to store encrypted passwords:
```mkdir ~/.passwords_encrypted```

> this is where CryFS will store encrypted data.

> You won’t be able to read files directly inside this folder.

Create a mount point for decrypted access:

```mkdir ~/passwords```


now initialize the cryfs for the first time (you dont need to do this again)

```cryfs ~/.passwords_encrypted ~/passwords```

use this cmd to enter your data in the file
