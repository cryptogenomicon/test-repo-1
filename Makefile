MYSUBDIR  = w01-genomes
WEBSUBDIR = w01

LECTURE = w01-lecture.md \
	phage_plaques.jpg \
	tailed_dna_phage_types.webp \
	T4_EM.ppm \
	t4_rII_plaques.png \
	T4_structure.jpg \
	T4_old_map.jpg \
	T4_genome_modern_map.ppm \
	genetic_code.webp

SECTION = w01-section-python.md \
	w01-section-molbio.md \
	w01-python.ipynb \
	w01-python_solutions.ipynb \
	good_code.png \
	python.png \
	images

HOMEWORK = w01-homework.md \
	lestrade-coverage.png \
	wiggins-coverage.png \
	wiggins-plot.py \
	lestrade.dat \
	phage-genomes.tar.gz \
	arugula.fa basil.fa  chickpea.fa gooseberry.fa huckleberry.fa \
	juniper.fa lentil.fa quince.fa   sage.fa       tangerine.fa



ANSWERS = \
	w01-answers-SRE.ipynb

pre: ${LECTURE} ${SECTION} ${HOMEWORK}
	@mkdir -p ../web/content/${WEBSUBDIR}
	@for f in ${LECTURE} ${SECTION} ${HOMEWORK}; do \
	    (cp -r -f $$f ../web/content/${WEBSUBDIR}/ ); \
	done

post: ${ANSWERS}
	@for f in ${ANSWERS}; do \
	    (cp -r -f $$f ../web/content/${WEBSUBDIR}/ ); \
	done

