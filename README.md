gitstrapped
===================

A DevOpsy PaaS for distributed systems developers, teaching the ways of Test-Driven DevOps Design and Continuous Automation. GitStrapped provides an interoperability framework for runtime bootstrapping of (para)virtual machinery as well as physical machinery if that's what you're into.

Installation is quite simple, and of course you need administrative access to the system being targeted for this installation:

`curl -s -1 -k https://api.gitstrapped.com/install-gitstrapped | bash`

Once the client is installed, packages can be found and then installed in a single command:

`gitstrapped search <package>`
`gitstrapped install <pkg-mask>`

Revision Controller may also be used to guarantee idempotency and serialized source-control, keeping in step with more disciplined/controlling developers who may have been betrayed by a package manager. Git, bzr, and svn are supported but not required.

Please read the License (AGPL v3)
`
http://api.gitstrapped.com/LICENSE-AGPLv3.txt
or
https://www.gnu.org/licenses/agpl-3.0.de.html
`

#### A STRAP is a Service Template Running A Process
#### A single STRAP may be licensed to the public under AGPLv3 or a more permissive license such as LGPL or BSD or GNU or Apache License.
#### A single STRAP may be authored by anyone and released publicly or conveyed / transmitted privately under different licensing agreements, as an example of platform freedom.
#### A single STRAP may not be released and may exist in /var/cache/gitstrapped or a local cache which a developer uses to test the code.
#### Asher Bond is an open sourcerer, but as with any programming language, developers may choose to keep their original STRAP code proprietary if that's what they're into.
#### A provisioner may invoke the STRAP at his or her own risk via `gitstrapped <strap>`
#### GitStrapped is both a hyperscale (grossly-overprovisioned / no-order-too-big) PaaS and Domain Specific Language (DSL)
#### GitStrapped is designed based on the 4 fundamental constraints of Usability, Scalability, Interoperability, and Repeatability (USIR)
#### USIR-friendliness constraints are enforced in order to idempotently roll forward with every push.
#### "Test-driven DevOps is how I fail fast. When I PaaS, I step forward with every push. When I GitStrapped, haters roll back" - @AsherBond.
