FROM gitlab/gitlab-ee:9.4.5-ee.0
COPY ci_yaml_http.patch /opt/gitlab/embedded/service/gitlab-rails/ci.patch
RUN apt-get update ; apt-get install -y patch
RUN cd /opt/gitlab/embedded/service/gitlab-rails ; patch -p1 < ci.patch