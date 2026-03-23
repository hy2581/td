# TD_5.6.2_71036_Linux_NL

Anlogic Tang Dynasty (TD) FPGA Development Tool v5.6.2 (Build 71036) for Linux (No License version).

## File Structure

The original ZIP file `TD_5.6.2_71036_Linux_NL.zip` (1.3GB) has been split into 50MB chunks for GitHub storage.

## Reassembly

### Linux / macOS

```bash
chmod +x reassemble.sh
./reassemble.sh
```

Or manually:

```bash
cat td_part_* > TD_5.6.2_71036_Linux_NL.zip
```

### Windows (PowerShell)

```powershell
Get-Content td_part_* -Encoding Byte -ReadCount 0 | Set-Content TD_5.6.2_71036_Linux_NL.zip -Encoding Byte
```

## Verification

After reassembly, verify the SHA256 checksum matches:

```bash
sha256sum TD_5.6.2_71036_Linux_NL.zip
```

## Installation

```bash
unzip TD_5.6.2_71036_Linux_NL.zip
chmod +x TD_5.6.2_71036_NL/bin/td TD_5.6.2_71036_NL/bin/td.sh
export TD_HOME=$(pwd)/TD_5.6.2_71036_NL
export PATH=$TD_HOME/bin:$PATH
export LD_LIBRARY_PATH=$TD_HOME/lib:$LD_LIBRARY_PATH
```
