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
      reserved=32768UH,
      kHFSVolumeSoftwareLockBit=0T,
      reserved2=0T,
      kHFSVolumeJournaledBit=0T,
      kHFSCatalogNodeIDsReusedBit=0T,
      kHFSBootVolumeInconsistentBit=0T,
      kHFSVolumeNoCacheRequiredBit=0T,
      kHFSVolumeSparedBlocksBit=0T,
      kHFSVolumeUnmountedBit=1T,
      kHFSVolumeHardwareLockBit=0T,
      reserved3=(uint<7>) 0
    },
    lastMountedVersion=[49UB,48UB,46UB,48UB],
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
    nextCatalogID=#<kHFSFirstUserCatalogNodeID>,
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

## Resources

* [GNU Poke](https://www.jemarch.net/poke)
  * [Pokology](https://pokology.org/index.html) community site for GNU Poke
  * [Learn Poke in Y Minutes](https://pokology.org/learn-poke-in-y-minutes.html)
* [HFS Plus volume format](https://developer.apple.com/library/archive/technotes/tn/tn1150.html)
* [hfs_format.h](https://opensource.apple.com/source/xnu/xnu-124.8/bsd/hfs/hfs_format.h.auto.html) from [opensource.apple.com](https://opensource.apple.com/)
