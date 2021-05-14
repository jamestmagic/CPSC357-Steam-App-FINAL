<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="18122" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES" initialViewController="7Ru-FK-WX6">
    <device id="retina6_1" orientation="portrait" appearance="light"/>
    <dependencies>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="18093"/>
        <capability name="Safe area layout guides" minToolsVersion="9.0"/>
        <capability name="System colors in document resources" minToolsVersion="11.0"/>
        <capability name="collection view cell content view" minToolsVersion="11.0"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
        <!--Game Library-->
        <scene sceneID="ngH-tS-e1w">
            <objects>
                <viewController title="Game Library" id="17A-ZM-498" customClass="LibraryViewController" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="zTP-DY-qoe">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <stackView opaque="NO" contentMode="top" axis="vertical" spacing="32" translatesAutoresizingMaskIntoConstraints="NO" id="MBK-rR-3rb">
                                <rect key="frame" x="0.0" y="0.0" width="414" height="600"/>
                                <subviews>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Games Library" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="gyi-0h-gzQ">
                                        <rect key="frame" x="0.0" y="0.0" width="414" height="55"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="46"/>
                                        <nil key="textColor"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Label" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="2Pt-gv-M19">
                                        <rect key="frame" x="0.0" y="87" width="414" height="20.5"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                        <nil key="textColor"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Search" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="0qZ-eK-qPW">
                                        <rect key="frame" x="0.0" y="139.5" width="414" height="30"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="25"/>
                                        <nil key="textColor"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <searchBar contentMode="redraw" text="" translatesAutoresizingMaskIntoConstraints="NO" id="N3P-kr-MBu">
                                        <rect key="frame" x="0.0" y="149" width="414" height="51"/>
                                        <textInputTraits key="textInputTraits"/>
                                    </searchBar>
                                    <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="-1" estimatedRowHeight="-1" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="wmW-8x-u76">
                                        <rect key="frame" x="0.0" y="232" width="414" height="368"/>
                                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                                        <prototypes>
                                            <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" preservesSuperviewLayoutMargins="YES" selectionStyle="default" indentationWidth="10" reuseIdentifier="cell" id="f2i-Od-Uhj" customClass="CustomLibraryCell" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target">
                                                <rect key="frame" x="0.0" y="24.5" width="414" height="43.5"/>
                                                <autoresizingMask key="autoresizingMask"/>
                                                <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" restorationIdentifier="cell" preservesSuperviewLayoutMargins="YES" insetsLayoutMarginsFromSafeArea="NO" tableViewCell="f2i-Od-Uhj" id="h7u-R1-Qk1">
                                                    <rect key="frame" x="0.0" y="0.0" width="414" height="43.5"/>
                                                    <autoresizingMask key="autoresizingMask"/>
                                                    <subviews>
                                                        <view contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="Jwf-av-t1S">
                                                            <rect key="frame" x="16" y="-43" width="130" height="128"/>
                                                            <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                            <color key="backgroundColor" systemColor="systemGray2Color"/>
                                                        </view>
                                                        <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Label" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Mhy-87-Kq5">
                                                            <rect key="frame" x="181" y="11" width="55" height="28"/>
                                                            <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                            <fontDescription key="fontDescription" type="system" pointSize="23"/>
                                                            <nil key="textColor"/>
                                                            <nil key="highlightedColor"/>
                                                        </label>
                                                    </subviews>
                                                </tableViewCellContentView>
                                                <connections>
                                                    <outlet property="customLibraryCellLabel" destination="Mhy-87-Kq5" id="nic-R0-Vu5"/>
                                                    <outlet property="customLibraryView" destination="Jwf-av-t1S" id="3WS-Tg-x3B"/>
                                                </connections>
                                            </tableViewCell>
                                        </prototypes>
                                    </tableView>
                                </subviews>
                                <constraints>
                                    <constraint firstItem="gyi-0h-gzQ" firstAttribute="leading" secondItem="MBK-rR-3rb" secondAttribute="leading" constant="10" id="1cN-9m-aE9"/>
                                    <constraint firstAttribute="height" constant="600" id="CZp-2A-dpG"/>
                                    <constraint firstItem="gyi-0h-gzQ" firstAttribute="top" secondItem="MBK-rR-3rb" secondAttribute="top" constant="10" id="bNP-k9-6XL"/>
                                </constraints>
                            </stackView>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="Mng-mh-Dig"/>
                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                        <constraints>
                            <constraint firstItem="MBK-rR-3rb" firstAttribute="leading" secondItem="Mng-mh-Dig" secondAttribute="leading" id="1ar-21-wky"/>
                            <constraint firstItem="Mng-mh-Dig" firstAttribute="trailing" secondItem="MBK-rR-3rb" secondAttribute="trailing" id="43H-pp-Hzj"/>
                            <constraint firstItem="MBK-rR-3rb" firstAttribute="top" secondItem="zTP-DY-qoe" secondAttribute="top" id="riP-6e-gdw"/>
                        </constraints>
                    </view>
                    <tabBarItem key="tabBarItem" title="Library" id="Hwr-bH-oME"/>
                    <connections>
                        <outlet property="LibraryLabel" destination="gyi-0h-gzQ" id="3py-Nz-x0u"/>
                        <outlet property="LibraryVerticalStackController" destination="MBK-rR-3rb" id="Kra-xA-ZZp"/>
                        <outlet property="LibraryViewController" destination="zTP-DY-qoe" id="Gur-y2-ATY"/>
                        <outlet property="searchBar" destination="N3P-kr-MBu" id="VqU-xj-aoo"/>
                        <outlet property="tableView" destination="wmW-8x-u76" id="Bym-8Z-kRY"/>
                        <outlet property="testLabel" destination="2Pt-gv-M19" id="VSO-gh-hPd"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="YfX-RZ-FNK" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="-691.304347826087" y="139.95535714285714"/>
        </scene>
        <!--Tab Bar Controller-->
        <scene sceneID="bff-j7-ds9">
            <objects>
                <tabBarController id="7Ru-FK-WX6" sceneMemberID="viewController">
                    <tabBar key="tabBar" contentMode="scaleToFill" insetsLayoutMarginsFromSafeArea="NO" id="V6Z-pM-ujU">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="49"/>
                        <autoresizingMask key="autoresizingMask"/>
                        <color key="backgroundColor" white="0.0" alpha="0.0" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
                    </tabBar>
                    <connections>
                        <segue destination="BYZ-38-t0r" kind="relationship" relationship="viewControllers" destinationCreationSelector="1" id="f7Q-Et-FYj"/>
                        <segue destination="17A-ZM-498" kind="relationship" relationship="viewControllers" destinationCreationSelector="2" id="c9C-5R-f1d"/>
                    </connections>
                </tabBarController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="Mb1-fT-ExY" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="-1583" y="-163"/>
        </scene>
        <!--Main Menu-->
        <scene sceneID="tne-QT-ifu">
            <objects>
                <viewController title="Main Menu" id="BYZ-38-t0r" customClass="ViewController" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="8bC-Xf-vdC">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" flexibleMinX="YES" widthSizable="YES" flexibleMaxX="YES" flexibleMinY="YES" heightSizable="YES" flexibleMaxY="YES"/>
                        <subviews>
                            <scrollView clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="7S1-ex-Pgb">
                                <rect key="frame" x="0.0" y="0.0" width="414" height="813"/>
                                <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                                <subviews>
                                    <stackView opaque="NO" contentMode="TopLeft" axis="vertical" spacing="4" id="ilx-Ij-b3c">
                                        <rect key="frame" x="8" y="22" width="414" height="622"/>
                                        <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                        <subviews>
                                            <stackView opaque="NO" contentMode="scaleToFill" axis="vertical" translatesAutoresizingMaskIntoConstraints="NO" id="yLG-eo-kl2">
                                                <rect key="frame" x="0.0" y="0.0" width="414" height="377"/>
                                                <subviews>
                                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Home" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Tdz-eJ-5bG">
                                                        <rect key="frame" x="0.0" y="0.0" width="414" height="48"/>
                                                        <fontDescription key="fontDescription" type="system" pointSize="40"/>
                                                        <nil key="textColor"/>
                                                        <nil key="highlightedColor"/>
                                                    </label>
                                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Player Stats" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="UAs-AI-aPi">
                                                        <rect key="frame" x="0.0" y="48" width="414" height="29"/>
                                                        <fontDescription key="fontDescription" type="system" pointSize="24"/>
                                                        <nil key="textColor"/>
                                                        <nil key="highlightedColor"/>
                                                    </label>
                                                    <collectionView clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="scaleToFill" showsVerticalScrollIndicator="NO" dataMode="prototypes" translatesAutoresizingMaskIntoConstraints="NO" id="RkJ-98-OJv">
                                                        <rect key="frame" x="0.0" y="77" width="414" height="300"/>
                                                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                                                        <constraints>
                                                            <constraint firstAttribute="width" constant="300" id="Xfg-V1-0DL"/>
                                                            <constraint firstAttribute="height" constant="300" id="ZaY-fp-Ewh"/>
                                                        </constraints>
                                                        <collectionViewFlowLayout key="collectionViewLayout" scrollDirection="horizontal" automaticEstimatedItemSize="YES" minimumLineSpacing="10" minimumInteritemSpacing="10" sectionInsetReference="layoutMargins" id="JLI-Zd-hgc">
                                                            <size key="itemSize" width="200" height="200"/>
                                                            <size key="headerReferenceSize" width="0.0" height="0.0"/>
                                                            <size key="footerReferenceSize" width="0.0" height="0.0"/>
                                                            <inset key="sectionInset" minX="0.0" minY="0.0" maxX="0.0" maxY="0.0"/>
                                                        </collectionViewFlowLayout>
                                                        <cells>
                                                            <collectionViewCell opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" reuseIdentifier="cell" id="fVY-Ah-9Gv" customClass="CustomCollectionCell" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target">
                                                                <rect key="frame" x="8" y="50" width="200" height="200"/>
                                                                <autoresizingMask key="autoresizingMask"/>
                                                                <collectionViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" insetsLayoutMarginsFromSafeArea="NO" id="voc-BS-exp" customClass="CustomCollectionCell" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target">
                                                                    <rect key="frame" x="0.0" y="0.0" width="200" height="200"/>
                                                                    <autoresizingMask key="autoresizingMask"/>
                                                                    <subviews>
                                                                        <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Label" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="Sz1-co-z6j">
                                                                            <rect key="frame" x="79" y="158" width="42" height="21"/>
                                                                            <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                                            <fontDescription key="fontDescription" type="system" pointSize="17"/>
                                                                            <nil key="textColor"/>
                                                                            <nil key="highlightedColor"/>
                                                                        </label>
                                                                    </subviews>
                                                                </collectionViewCellContentView>
                                                                <color key="backgroundColor" systemColor="systemBlueColor"/>
                                                                <edgeInsets key="layoutMargins" top="8" left="8" bottom="8" right="8"/>
                                                                <size key="customSize" width="200" height="200"/>
                                                                <connections>
                                                                    <outlet property="customLabel" destination="Sz1-co-z6j" id="pyw-8B-jnC"/>
                                                                    <outlet property="customView" destination="voc-BS-exp" id="3yv-rE-XXj"/>
                                                                </connections>
                                                            </collectionViewCell>
                                                        </cells>
                                                    </collectionView>
                                                </subviews>
                                            </stackView>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Recommended For Today" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="oFs-EP-EUj">
                                                <rect key="frame" x="0.0" y="381" width="414" height="29"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="24"/>
                                                <nil key="textColor"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <tableView clipsSubviews="YES" contentMode="scaleToFill" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="-1" estimatedRowHeight="-1" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="am1-S7-lbx">
                                                <rect key="frame" x="0.0" y="414" width="414" height="208"/>
                                                <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                                                <prototypes>
                                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" preservesSuperviewLayoutMargins="YES" selectionStyle="default" indentationWidth="10" reuseIdentifier="cell" rowHeight="120" id="Kmp-Xm-8YE" customClass="CustomCell" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target">
                                                        <rect key="frame" x="0.0" y="24.5" width="414" height="120"/>
                                                        <autoresizingMask key="autoresizingMask"/>
                                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" preservesSuperviewLayoutMargins="YES" insetsLayoutMarginsFromSafeArea="NO" tableViewCell="Kmp-Xm-8YE" id="KDg-eu-yOw">
                                                            <rect key="frame" x="0.0" y="0.0" width="414" height="120"/>
                                                            <autoresizingMask key="autoresizingMask"/>
                                                            <subviews>
                                                                <view contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="26m-Pv-yF6">
                                                                    <rect key="frame" x="20" y="-4" width="100" height="100"/>
                                                                    <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                                    <color key="backgroundColor" systemColor="systemBlueColor"/>
                                                                </view>
                                                                <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" fixedFrame="YES" text="Label" textAlignment="center" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="UPm-D5-s4A">
                                                                    <rect key="frame" x="177" y="11" width="127" height="32"/>
                                                                    <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
                                                                    <fontDescription key="fontDescription" type="system" pointSize="24"/>
                                                                    <nil key="textColor"/>
                                                                    <nil key="highlightedColor"/>
                                                                </label>
                                                            </subviews>
                                                        </tableViewCellContentView>
                                                        <accessibility key="accessibilityConfiguration" identifier="cell"/>
                                                        <connections>
                                                            <outlet property="customCellLabel" destination="UPm-D5-s4A" id="pka-Az-uw4"/>
                                                            <outlet property="customView" destination="26m-Pv-yF6" id="2Qk-VL-Bbd"/>
                                                        </connections>
                                                    </tableViewCell>
                                                </prototypes>
                                            </tableView>
                                        </subviews>
                                    </stackView>
                                </subviews>
                                <viewLayoutGuide key="contentLayoutGuide" id="LWz-oi-xbY"/>
                                <viewLayoutGuide key="frameLayoutGuide" id="1Ef-Nm-ybV"/>
                                <userDefinedRuntimeAttributes>
                                    <userDefinedRuntimeAttribute type="size" keyPath="contentSize">
                                        <size key="value" width="600" height="1920"/>
                                    </userDefinedRuntimeAttribute>
                                </userDefinedRuntimeAttributes>
                            </scrollView>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="6Tk-OE-BBY"/>
                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                    </view>
                    <tabBarItem key="tabBarItem" title="Home" id="gTE-xW-2ql"/>
                    <connections>
                        <outlet property="MainMenuStack" destination="ilx-Ij-b3c" id="gtm-iH-pa4"/>
                        <outlet property="collectionView" destination="RkJ-98-OJv" id="gCc-hf-Vly"/>
                        <outlet property="mainMenuViewController" destination="8bC-Xf-vdC" id="FsA-MQ-r35"/>
                        <outlet property="tableView" destination="am1-S7-lbx" id="Vpw-K8-NLu"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="dkx-z0-nzr" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="-691.304347826087" y="-546.42857142857144"/>
        </scene>
        <!--Settings View-->
        <scene sceneID="ni8-CM-tg2">
            <objects>
                <viewController id="qxG-Qe-HLU" customClass="SettingsView" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="9RJ-1g-QM8">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <stackView opaque="NO" contentMode="scaleToFill" fixedFrame="YES" axis="vertical" translatesAutoresizingMaskIntoConstraints="NO" id="shC-n0-sNm">
                                <rect key="frame" x="0.0" y="0.0" width="240" height="182"/>
                                <subviews>
                                    <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Settings" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="0s2-Bt-YUq">
                                        <rect key="frame" x="0.0" y="0.0" width="240" height="54"/>
                                        <fontDescription key="fontDescription" type="system" pointSize="45"/>
                                        <nil key="textColor"/>
                                        <nil key="highlightedColor"/>
                                    </label>
                                    <tableView clipsSubviews="YES" contentMode="scaleToFill" ambiguous="YES" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="-1" estimatedRowHeight="-1" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="zOR-2J-Fxq">
                                        <rect key="frame" x="0.0" y="54" width="240" height="128"/>
                                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                                        <prototypes>
                                            <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" preservesSuperviewLayoutMargins="YES" selectionStyle="default" indentationWidth="10" id="U1Q-np-8Xt">
                                                <rect key="frame" x="0.0" y="24.5" width="240" height="43.5"/>
                                                <autoresizingMask key="autoresizingMask"/>
                                                <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" preservesSuperviewLayoutMargins="YES" insetsLayoutMarginsFromSafeArea="NO" tableViewCell="U1Q-np-8Xt" id="nen-Dz-okn">
                                                    <rect key="frame" x="0.0" y="0.0" width="240" height="43.5"/>
                                                    <autoresizingMask key="autoresizingMask"/>
                                                </tableViewCellContentView>
                                            </tableViewCell>
                                        </prototypes>
                                    </tableView>
                                </subviews>
                            </stackView>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="nUn-fx-EBq"/>
                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                    </view>
                    <connections>
                        <outlet property="settingsStackViewController" destination="shC-n0-sNm" id="HHM-2W-fiQ"/>
                        <outlet property="settingsViewController" destination="9RJ-1g-QM8" id="nfx-F4-4ty"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="bDq-HV-vY6" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="215.94202898550725" y="-541.07142857142856"/>
        </scene>
        <!--Game Info View-->
        <scene sceneID="p1a-MJ-dnh">
            <objects>
                <viewController id="9Bo-YU-ftl" customClass="GameInfoView" customModule="CPSC357_Steam_App_FINAL" customModuleProvider="target" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="hWv-v1-Iqe">
                        <rect key="frame" x="0.0" y="0.0" width="414" height="896"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <subviews>
                            <scrollView clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="scaleToFill" fixedFrame="YES" translatesAutoresizingMaskIntoConstraints="NO" id="IZt-0W-48S">
                                <rect key="frame" x="0.0" y="0.0" width="414" height="862"/>
                                <autoresizingMask key="autoresizingMask" widthSizable="YES"/>
                                <subviews>
                                    <stackView opaque="NO" contentMode="scaleToFill" fixedFrame="YES" axis="vertical" translatesAutoresizingMaskIntoConstraints="NO" id="Okk-0b-vFv">
                                        <rect key="frame" x="8" y="0.0" width="397" height="851.5"/>
                                        <subviews>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" text="Game Title" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="WZz-GO-fzt">
                                                <rect key="frame" x="0.0" y="0.0" width="397" height="54"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="45"/>
                                                <nil key="textColor"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <view contentMode="scaleToFill" ambiguous="YES" translatesAutoresizingMaskIntoConstraints="NO" id="0il-uq-aV5">
                                                <rect key="frame" x="0.0" y="54" width="397" height="300"/>
                                                <color key="backgroundColor" systemColor="systemBlueColor"/>
                                            </view>
                                            <view contentMode="scaleToFill" ambiguous="YES" translatesAutoresizingMaskIntoConstraints="NO" id="ghr-UC-Nt9">
                                                <rect key="frame" x="0.0" y="354" width="397" height="300"/>
                                                <color key="backgroundColor" systemColor="systemOrangeColor"/>
                                            </view>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" ambiguous="YES" text="About" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="ui6-za-SPR">
                                                <rect key="frame" x="0.0" y="654" width="397" height="39.5"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="33"/>
                                                <nil key="textColor"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <label opaque="NO" userInteractionEnabled="NO" contentMode="left" horizontalHuggingPriority="251" verticalHuggingPriority="251" ambiguous="YES" text="Heres Some Info about the Game" textAlignment="natural" lineBreakMode="tailTruncation" baselineAdjustment="alignBaselines" adjustsFontSizeToFit="NO" translatesAutoresizingMaskIntoConstraints="NO" id="9da-Da-Tp0">
                                                <rect key="frame" x="0.0" y="693.5" width="397" height="30"/>
                                                <fontDescription key="fontDescription" type="system" pointSize="25"/>
                                                <nil key="textColor"/>
                                                <nil key="highlightedColor"/>
                                            </label>
                                            <tableView clipsSubviews="YES" contentMode="scaleToFill" ambiguous="YES" alwaysBounceVertical="YES" dataMode="prototypes" style="plain" separatorStyle="default" rowHeight="-1" estimatedRowHeight="-1" sectionHeaderHeight="28" sectionFooterHeight="28" translatesAutoresizingMaskIntoConstraints="NO" id="pqv-aq-tde">
                                                <rect key="frame" x="0.0" y="723.5" width="397" height="128"/>
                                                <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                                                <prototypes>
                                                    <tableViewCell clipsSubviews="YES" contentMode="scaleToFill" preservesSuperviewLayoutMargins="YES" selectionStyle="default" indentationWidth="10" id="Gse-RV-I8Y">
                                                        <rect key="frame" x="0.0" y="24.5" width="397" height="43.5"/>
                                                        <autoresizingMask key="autoresizingMask"/>
                                                        <tableViewCellContentView key="contentView" opaque="NO" clipsSubviews="YES" multipleTouchEnabled="YES" contentMode="center" preservesSuperviewLayoutMargins="YES" insetsLayoutMarginsFromSafeArea="NO" tableViewCell="Gse-RV-I8Y" id="Zit-g4-Xxf">
                                                            <rect key="frame" x="0.0" y="0.0" width="397" height="43.5"/>
                                                            <autoresizingMask key="autoresizingMask"/>
                                                        </tableViewCellContentView>
                                                    </tableViewCell>
                                                </prototypes>
                                            </tableView>
                                        </subviews>
                                    </stackView>
                                </subviews>
                                <viewLayoutGuide key="contentLayoutGuide" id="anB-Vv-lkP"/>
                                <viewLayoutGuide key="frameLayoutGuide" id="aXk-NB-fx6"/>
                                <userDefinedRuntimeAttributes>
                                    <userDefinedRuntimeAttribute type="size" keyPath="contentSize">
                                        <size key="value" width="400" height="1920"/>
                                    </userDefinedRuntimeAttribute>
                                </userDefinedRuntimeAttributes>
                            </scrollView>
                        </subviews>
                        <viewLayoutGuide key="safeArea" id="1Mu-fR-5cU"/>
                        <color key="backgroundColor" systemColor="systemBackgroundColor"/>
                    </view>
                    <connections>
                        <outlet property="GameStackView" destination="Okk-0b-vFv" id="4RV-Li-rpf"/>
                        <outlet property="GameViewController" destination="hWv-v1-Iqe" id="xMn-EG-5B8"/>
                        <outlet property="gameTitleLabel" destination="WZz-GO-fzt" id="bio-Y9-N4U"/>
                        <outlet property="placeholderView01" destination="0il-uq-aV5" id="d38-X6-fVS"/>
                        <outlet property="tableView" destination="pqv-aq-tde" id="Lif-7T-E4l"/>
                    </connections>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="bKf-mX-YyQ" userLabel="First Responder" customClass="UIResponder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="226" y="140"/>
        </scene>
    </scenes>
    <resources>
        <systemColor name="systemBackgroundColor">
            <color white="1" alpha="1" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
        </systemColor>
        <systemColor name="systemBlueColor">
            <color red="0.0" green="0.47843137254901963" blue="1" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
        </systemColor>
        <systemColor name="systemGray2Color">
            <color red="0.68235294117647061" green="0.68235294117647061" blue="0.69803921568627447" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
        </systemColor>
        <systemColor name="systemOrangeColor">
            <color red="1" green="0.58431372549019611" blue="0.0" alpha="1" colorSpace="custom" customColorSpace="sRGB"/>
        </systemColor>
    </resources>
</document>
