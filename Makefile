presentation: 16to9
	echo "Build presentation"
	bundle exec asciidoctor-revealjs presentation.adoc
	echo "Update CSS"
	sass --scss scss/custom.scss css/custom.css

presentation_wide: presentation
	echo "Replace width"
	sed -i 's/960/1280/g' presentation.html

presentation_4to3: 4to3 presentation
	echo "Build 4:3 presentation"

16to9:
	cd images; ./switch.sh 16to9
	echo "Links for 16to9 created"

4to3:
	cd images; ./switch.sh 4to3
	echo "Links for 4to3 created"

pdf: presentation
	docker run --rm --shm-size 2G -v /home/stoeps/docs/froscon18/presentation:/slides astefanutti/decktape --size 1600x900 http://172.17.0.2/presentation.html presentation.pdf
