.PHONY: all
all:
	echo OK


.PHONY: env
env:
	virtualenv env -p python2
	env/bin/pip install -r requirements.txt

remote:
	env/bin/ansible-playbook -i remote site.yml --ask-become-pass

clean:
	rm -rf env
