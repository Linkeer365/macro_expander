  $ eq="\vec{F} = \frac{k q_1 q_2}{r^2} \hat{r}"
  $ cmd="tex2im -o %s  -- '$eq' "
  $ fhash=$(echo -n "$cmd" | sha1sum | cut -d' ' -f1)
  $ cat << EOF > input.md.t
  > Coulomb's Law: \mathimg{$eq}
  > EOF
  $ which expand-macros.py
  .*/_test-install-virtualenv/bin/expand-macros.py (re)
  $ expand-macros.py input.md.t input.md > /dev/null
  $ test -f input.md
  $ cat input.md
  Coulomb's Law: ![](./mathimg-a12c90dd39e0ee8cb5025183d44ec431cad68d6d-image.png)
  $ test -f ./mathimg-a12c90dd39e0ee8cb5025183d44ec431cad68d6d-image.png
  $ test -f ./mathimg-a12c90dd39e0ee8cb5025183d44ec431cad68d6d-image.log
