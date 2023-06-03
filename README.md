# Fakturama docker
The SWT based issues were hindering the smooth operation of Fakturama(https://www.fakturama.info/), causing frustration for users. In response to this issue, a solution was developed specifically to overcome and eliminate these persistent org.eclipse.swt.SWTError problems.

By implementing this solution, users of Fakturama on Linux can now enjoy a seamless experience without being interrupted by the aforementioned errors. This solution aims to ensure the stable and reliable functionality of Fakturama, allowing Linux users to utilize the software efficiently for their invoicing and billing needs.

## Usage:
1. In the shell script `docker/start.sh`, replace the `~/fakturama` with the path to your Fakturama's working directory.
2. Use the script `docker/start.sh` to start Fakturama.
3. On the first launch, you must change the Fakturama's working directory to `/root/fakturama`.
