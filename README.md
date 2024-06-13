# poke-hfs-plus

Description of the macOS [HFS Plus volume format](https://developer.apple.com/library/archive/technotes/tn/tn1150.html) in [GNU Poke](http://jemarch.net/poke).

## Usage

Create a disk image (DMG) file to test on:
```
$ make test.dmg
hdiutil create -size 10M -fs HFS+ -volname "test" test.dmg
```

Run describe script to dump HFS+ structures decoded from the image:
```
$ ./hfs-describe test.dmg
HFSPlusVolume {
  reserved1=[0UB,0UB,0UB,0UB,0UB,...],
  header=HFSPlusVolumeHeader {
    signature=[72UB,43UB],
    version=4UH,
    attributes=HFSVolumeAttributes {
      reserved1=(uint<7>) 0,
      kHFSVolumeHardwareLockBit=0T,
      kHFSVolumeUnmountedBit=0T,
      kHFSVolumeSparedBlocksBit=0T,
      kHFSVolumeNoCacheRequiredBit=0T,
      kHFSBootVolumeInconsistentBit=0T,
      kHFSCatalogNodeIDsReusedBit=0T,
      kHFSVolumeJournaledBit=0T,
      reserved2=0T,
      kHFSVolumeSoftwareLockBit=1T,
      reserved3=128UH
    },
    lastMountedVersion=825241136U,
    journalInfoBlock=0U,
    createDate=3801110353U,
    modifyDate=3801074353U,
    backupDate=0U,
    checkedDate=3801074353U,
    fileCount=0U,
    folderCount=0U,
    blockSize=4096U,
    totalBlocks=2550U#32768,
    freeBlocks=2491U#32768,
    nextAllocation=428U,
    rsrcClumpSize=65536U,
    dataClumpSize=65536U,
    nextCatalogID=#<UNRECOGNIZED>,
    writeCount=0U,
    encodingsBitmap=1UL,
    finderInfo=[0U,0U,0U,0U,0U,...],
    allocationFile=HFSPlusForkData {
      logicalSize=4096UL,
      clumpSize=4096U,
      totalBlocks=1U,
      extents=HFSPlusExtentRecord {
        records=[HFSPlusExtentDescriptor {
          startBlock=1U#32768,
          blockCount=1U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },...]
      }
    },
    extentsFile=HFSPlusForkData {
      logicalSize=77824UL,
      clumpSize=77824U,
      totalBlocks=19U,
      extents=HFSPlusExtentRecord {
        records=[HFSPlusExtentDescriptor {
          startBlock=2U#32768,
          blockCount=19U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },...]
      }
    },
    catalogFile=HFSPlusForkData {
      logicalSize=77824UL,
      clumpSize=77824U,
      totalBlocks=19U,
      extents=HFSPlusExtentRecord {
        records=[HFSPlusExtentDescriptor {
          startBlock=219U#32768,
          blockCount=19U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },...]
      }
    },
    attributesFile=HFSPlusForkData {
      logicalSize=73728UL,
      clumpSize=73728U,
      totalBlocks=18U,
      extents=HFSPlusExtentRecord {
        records=[HFSPlusExtentDescriptor {
          startBlock=21U#32768,
          blockCount=18U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },...]
      }
    },
    startupFile=HFSPlusForkData {
      logicalSize=0UL,
      clumpSize=0U,
      totalBlocks=0U,
      extents=HFSPlusExtentRecord {
        records=[HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },HFSPlusExtentDescriptor {
          startBlock=0U#32768,
          blockCount=0U#32768
        },...]
      }
    }
  }
}
```
