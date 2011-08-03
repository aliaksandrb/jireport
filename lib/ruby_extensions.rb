class Object
  def send_chain methods
    methods.inject(self) do |obj, meth|
      obj.send meth
    end
  end
end

module Enumerable
  def map_hash
    raise ArgumentError, 'block required' unless block_given?
    hash = {}
    each do |e|
      pair = yield e
      hash[pair[0]] = pair[1]
    end
    hash
  end
end
