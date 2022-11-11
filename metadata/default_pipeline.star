
# version 30001

data_pipeline_general

_rlnPipeLineJobCounter                       9
 

# version 30001

data_pipeline_processes

loop_ 
_rlnPipeLineProcessName #1 
_rlnPipeLineProcessAlias #2 
_rlnPipeLineProcessTypeLabel #3 
_rlnPipeLineProcessStatusLabel #4 
Import/job001/ Import/movies/ relion.import.movies  Succeeded 
MotionCorr/job002/       None relion.motioncorr.own  Succeeded 
CtfFind/job003/       None relion.ctffind.ctffind4  Succeeded 
AutoPick/job004/       None relion.autopick.log  Succeeded 
Extract/job005/       None relion.extract  Succeeded 
Class2D/job006/       None relion.class2d  Succeeded 
Select/job007/       None relion.select.class2dauto  Succeeded 
Class2D/job008/       None relion.class2d    Running 
 

# version 30001

data_pipeline_nodes

loop_ 
_rlnPipeLineNodeName #1 
_rlnPipeLineNodeTypeLabel #2 
Import/job001/movies.star MicrographMoviesData.star.relion 
MotionCorr/job002/corrected_micrographs.star MicrographsData.star.relion.motioncorr 
MotionCorr/job002/logfile.pdf LogFile.pdf.relion.motioncorr 
CtfFind/job003/micrographs_ctf.star MicrographsData.star.relion.ctf 
CtfFind/job003/logfile.pdf LogFile.pdf.relion.ctffind 
AutoPick/job004/autopick.star MicrographsCoords.star.relion.autopick 
AutoPick/job004/logfile.pdf LogFile.pdf.relion.autopick 
Extract/job005/particles.star ParticlesData.star.relion 
Class2D/job006/run_it025_data.star ParticlesData.star.relion.class2d 
Class2D/job006/run_it025_optimiser.star ProcessData.star.relion.optimiser.class2d 
Select/job007/particles.star ParticlesData.star.relion 
Select/job007/class_averages.star ImagesData.star.relion.classaverages 
Select/job007/rank_optimiser.star ProcessData.star.relion.optimiser.autoselect 
Class2D/job008/run_it025_data.star ParticlesData.star.relion.class2d 
Class2D/job008/run_it025_optimiser.star ProcessData.star.relion.optimiser.class2d 
 

# version 30001

data_pipeline_input_edges

loop_ 
_rlnPipeLineEdgeFromNode #1 
_rlnPipeLineEdgeProcess #2 
Import/job001/movies.star MotionCorr/job002/ 
MotionCorr/job002/corrected_micrographs.star CtfFind/job003/ 
CtfFind/job003/micrographs_ctf.star AutoPick/job004/ 
CtfFind/job003/micrographs_ctf.star Extract/job005/ 
AutoPick/job004/autopick.star Extract/job005/ 
Extract/job005/particles.star Class2D/job006/ 
Class2D/job006/run_it025_optimiser.star Select/job007/ 
Extract/job005/particles.star Class2D/job008/ 
 

# version 30001

data_pipeline_output_edges

loop_ 
_rlnPipeLineEdgeProcess #1 
_rlnPipeLineEdgeToNode #2 
Import/job001/ Import/job001/movies.star 
MotionCorr/job002/ MotionCorr/job002/corrected_micrographs.star 
MotionCorr/job002/ MotionCorr/job002/logfile.pdf 
CtfFind/job003/ CtfFind/job003/micrographs_ctf.star 
CtfFind/job003/ CtfFind/job003/logfile.pdf 
AutoPick/job004/ AutoPick/job004/autopick.star 
AutoPick/job004/ AutoPick/job004/logfile.pdf 
Extract/job005/ Extract/job005/particles.star 
Class2D/job006/ Class2D/job006/run_it025_data.star 
Class2D/job006/ Class2D/job006/run_it025_optimiser.star 
Select/job007/ Select/job007/particles.star 
Select/job007/ Select/job007/class_averages.star 
Select/job007/ Select/job007/rank_optimiser.star 
Class2D/job008/ Class2D/job008/run_it025_data.star 
Class2D/job008/ Class2D/job008/run_it025_optimiser.star 
 
