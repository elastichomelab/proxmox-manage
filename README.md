Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).


# 참고

files
각 managed 서버에 배포할 파일의 위치
설치에 필요한 파일이 위치하는 디렉터리
handelrs
linux service 를 처리하기 위해 사용
리눅스 마다 상이한 서비스 명등을 처리하기 위한 디렉터리
main.yml 에 작성
tasks
playerbook 의 tasks 와 동일
defaults
기본 변수 설정
vars
작업 수행 시 사용할 변수 정의
templates
managed 서버에 배포할 템플릿 파일의 위치
meta
roles 에 대한 정보, 호환 버전 등 메타 데이터 정의