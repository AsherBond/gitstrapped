#!/usr/bin/ruby
# (C) Asher Bond 2013
# GitStrapped is a runtime bootstrapping utility for automated deployment of software application
# code atop a virtual or paravirtual machine or even a physical machine.. if that's what you're into.
# 
# GitStrapped also serves as the client of a Test-Driven-DevOps PaaS framework for distributed systems developers.
#
# Please read the License (This STRAP and ep-gitstrapped are licensed under AGPL v3)
# http://api.gitstrapped.com/LICENSE-AGPLv3.txt
# or
# https://www.gnu.org/licenses/agpl-3.0.de.html
# 
# To install @GitStrapped:
# curl http://api.gitstrapped.com/install-gitstrapped | bash
#
# A STRAP is a Service Template Running A Process
# A STRAP may be licensed to the public under AGPLv3 or a more permissive license such as LGPL or BSD or GNU or Apache License.
# A provisioner may invoke the STRAP at his or her own risk via ep-gitstrapped <strap>
#
# Please also join me in support of the Electronic Frontier Foundation (Defending Your Rights In The Digital World)
# https://www.eff.org/

class Gitstrapped 
  attr_reader :client
  def initialize(client='gitstrapped')
    @client = client
  end

  def method_missing(method, *arg)
      @strap = method.to_s.gsub('_','-')
      system(@client.to_s, @strap, *arg)
  end

end

# single or multiple dispatch polymorphism abstracts distributed systems
# in an object-oriented framework. Here is the instantiation of an object:
gitstrapped = Gitstrapped.new

# deploy chef
gitstrapped.chef

# create a chef recipe from the environment's current configuration
gitstrapped.config_snapshot('chef')

