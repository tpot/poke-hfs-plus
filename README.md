# poke-hfs-plus

Description of the macOS [HFS Plus volume format](https://developer.apple.com/library/archive/technotes/tn/tn1150.html#VolumeAttributes) in [GNU Poke](http://jemarch.net/poke).

## Usage

```
$ ./hfs-describe test.dmg
file: test.dmg
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
  finderInfo=[0U,0U,0U,0U,0U,...]
}
```
