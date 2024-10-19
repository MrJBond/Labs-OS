Name:           file-counter
Version:        1.0
Release:        1%{?dist}
Summary:        A script to count files in /etc

License:        GPL
Source0:        count_files.sh

%description
This package provides a script that counts files in the /etc directory, excluding directories and symlinks.

%prep
# No preparation required

%build
# No build required


%install
install -d %{buildroot}/usr/local/bin
install -m 0755 %{SOURCE0} %{buildroot}/usr/local/bin/count_files.sh

%files
/usr/local/bin/count_files.sh
