#!/bin/bash

if [[ ! -e jenkins_jobs.ini ]]; then
  cp jenkins_jobs.ini.sample jenkins_jobs.ini
fi

rm -rf foreman-infra
rm -rf _build
mkdir _build
cd _build

git clone https://github.com/theforeman/foreman-infra.git
cd ..

cp -rf _build/foreman-infra/puppet/modules/jenkins_job_builder/files/theforeman.org foreman-infra
rm -rf _build
