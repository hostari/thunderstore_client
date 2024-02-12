require "spec"
require "webmock"
Spec.before_each &->WebMock.reset
require "json"
require "../src/thunderstore/**"
