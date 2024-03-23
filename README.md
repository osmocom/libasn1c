libasn1c - shared library of asn1c runtime
==========================================

This repository contains a shared library built from the asn1c runtime files.

Normally, the upstream asn1c copies an identical set of source code files into each and every project using
asn1c.  This becomes problematic if a single program uses multiple different ASN.1 specifications, where then
those source files would clash.

Let's instead move those runtime files into a shared library (*libasn1c*), which is then linked once by each program
needing it, no matter how many asn1c-generated specifications/syntax it uses.

**The version of the asn1c compiler must match the version of libasn1c**.  We are using this shared library in
combination with the [osmocom fork of asn1c](https://gitea.osmocom.org/osmocom/asn1c).


GIT Repository
--------------

You can clone from the official libosmocore.git repository using

	git clone https://gitea.osmocom.org/cellular-infrastructure/libasn1c

There is a web interface at <https://gitea.osmocom.org/cellular-infrastructure/libasn1c>


Mailing List
------------

Discussions related to libasn1c are happening on the
openbsc@lists.osmocom.org mailing list, please see
<https://lists.osmocom.org/mailman/listinfo/openbsc> for subscription
options and the list archive.

Please observe the [Osmocom Mailing List
Rules](https://osmocom.org/projects/cellular-infrastructure/wiki/Mailing_List_Rules)
when posting.
