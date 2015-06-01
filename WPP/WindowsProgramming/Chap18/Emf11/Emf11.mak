# Microsoft Developer Studio Generated NMAKE File, Based on Emf11.dsp
!IF "$(CFG)" == ""
CFG=Emf11 - Win32 Debug
!MESSAGE No configuration specified. Defaulting to Emf11 - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Emf11 - Win32 Release" && "$(CFG)" != "Emf11 - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Emf11.mak" CFG="Emf11 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Emf11 - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Emf11 - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Emf11 - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\Emf11.exe"


CLEAN :
	-@erase "$(INTDIR)\Emf.obj"
	-@erase "$(INTDIR)\Emf.res"
	-@erase "$(INTDIR)\Emf11.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\Emf11.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /Fp"$(INTDIR)\Emf11.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o "NUL" /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\Emf.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Emf11.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:no /pdb:"$(OUTDIR)\Emf11.pdb" /machine:I386 /out:"$(OUTDIR)\Emf11.exe" 
LINK32_OBJS= \
	"$(INTDIR)\Emf.obj" \
	"$(INTDIR)\Emf11.obj" \
	"$(INTDIR)\Emf.res"

"$(OUTDIR)\Emf11.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Emf11 - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\Emf11.exe"


CLEAN :
	-@erase "$(INTDIR)\Emf.obj"
	-@erase "$(INTDIR)\Emf.res"
	-@erase "$(INTDIR)\Emf11.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\Emf11.exe"
	-@erase "$(OUTDIR)\Emf11.ilk"
	-@erase "$(OUTDIR)\Emf11.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "UNICODE" /Fp"$(INTDIR)\Emf11.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o "NUL" /win32 
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\Emf.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\Emf11.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /incremental:yes /pdb:"$(OUTDIR)\Emf11.pdb" /debug /machine:I386 /out:"$(OUTDIR)\Emf11.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\Emf.obj" \
	"$(INTDIR)\Emf11.obj" \
	"$(INTDIR)\Emf.res"

"$(OUTDIR)\Emf11.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Emf11.dep")
!INCLUDE "Emf11.dep"
!ELSE 
!MESSAGE Warning: cannot find "Emf11.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "Emf11 - Win32 Release" || "$(CFG)" == "Emf11 - Win32 Debug"
SOURCE=..\Emf8\Emf.c

"$(INTDIR)\Emf.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\Emf8\Emf.rc

!IF  "$(CFG)" == "Emf11 - Win32 Release"


"$(INTDIR)\Emf.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\Emf.res" /i "\ProgWin\Chap18\Emf8" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "Emf11 - Win32 Debug"


"$(INTDIR)\Emf.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\Emf.res" /i "\ProgWin\Chap18\Emf8" /d "_DEBUG" $(SOURCE)


!ENDIF 

SOURCE=.\Emf11.c

"$(INTDIR)\Emf11.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

