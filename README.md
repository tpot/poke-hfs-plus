# poke-hfs-plus

Description of the macOS [HFS Plus volume format](https://developer.apple.com/library/archive/technotes/tn/tn1150.html) in [GNU Poke](http://jemarch.net/poke).

## Usage

```
$ ./hfs-describe test.dmg
HFSPlusVolumeHeader {
  signature=[72UB,43UB],
  version=4UH,
  attributes=HFSVolumeAttributes {
    reserved1=(uint<7>) 0,
    kHFSVolumeHardwareLockBit=0T,
    kHFSVolumeUnmountedBit=0T,
    kHFSVolumeSparedBlocksBit=0T,
    kHFSVolumeNoCacheRequiredBit=1T,
    kHFSBootVolumeInconsistentBit=0T,
    kHFSCatalogNodeIDsReusedBit=0T,
    kHFSVolumeJournaledBit=0T,
    reserved2=0T,
    kHFSVolumeSoftwareLockBit=1T,
    reserved3=128UH
  },
  lastMountedVersion=1212568394U,
  journalInfoBlock=2U,
  createDate=3801027432U,
  modifyDate=3800993911U,
  backupDate=0U,
  checkedDate=3800991432U,
  fileCount=24U,
  folderCount=3U,
  blockSize=4096U,
  totalBlocks=24410U,
  freeBlocks=21330U,
  nextAllocation=514U,
  rsrcClumpSize=65536U,
  dataClumpSize=65536U,
  nextCatalogID=#<kHFSRootFolderID>,
  writeCount=48U,
  encodingsBitmap=1UL,
  finderInfo=[0U,0U,0U,0U,0U,...],
  allocationFile=HFSPlusForkData {
    logicalSize=4096UL,
    clumpSize=4096U,
    totalBlocks=1U,
    extents=HFSPlusExtentRecord {
      records=[HFSPlusExtentDescriptor {
        startBlock=1U,
        blockCount=1U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },...]
    }
  },
  extentsFile=HFSPlusForkData {
    logicalSize=778240UL,
    clumpSize=778240U,
    totalBlocks=190U,
    extents=HFSPlusExtentRecord {
      records=[HFSPlusExtentDescriptor {
        startBlock=131U,
        blockCount=190U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },...]
    }
  },
  catalogFile=HFSPlusForkData {
    logicalSize=778240UL,
    clumpSize=778240U,
    totalBlocks=190U,
    extents=HFSPlusExtentRecord {
      records=[HFSPlusExtentDescriptor {
        startBlock=2411U,
        blockCount=190U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },...]
    }
  },
  attributesFile=HFSPlusForkData {
    logicalSize=778240UL,
    clumpSize=778240U,
    totalBlocks=190U,
    extents=HFSPlusExtentRecord {
      records=[HFSPlusExtentDescriptor {
        startBlock=321U,
        blockCount=190U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },...]
    }
  },
  startupFile=HFSPlusForkData {
    logicalSize=0UL,
    clumpSize=0U,
    totalBlocks=0U,
    extents=HFSPlusExtentRecord {
      records=[HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },HFSPlusExtentDescriptor {
        startBlock=0U,
        blockCount=0U
      },...]
    }
  }
}
```
