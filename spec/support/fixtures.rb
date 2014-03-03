# Reads a fixture from the filesystem.
#
# @param name [String]
# @return [String]
def read_fixture(name)
  file_path = File.expand_path("../../fixtures/#{name}", __FILE__)
  File.read(file_path)
end
