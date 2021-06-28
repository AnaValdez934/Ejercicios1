import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import static com.kms.katalon.core.testobject.ObjectRepository.findWindowsObject
import com.kms.katalon.core.checkpoint.Checkpoint as Checkpoint
import com.kms.katalon.core.cucumber.keyword.CucumberBuiltinKeywords as CucumberKW
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling as FailureHandling
import com.kms.katalon.core.testcase.TestCase as TestCase
import com.kms.katalon.core.testdata.TestData as TestData
import com.kms.katalon.core.testng.keyword.TestNGBuiltinKeywords as TestNGKW
import com.kms.katalon.core.testobject.TestObject as TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI
import com.kms.katalon.core.windows.keyword.WindowsBuiltinKeywords as Windows
import internal.GlobalVariable as GlobalVariable
import org.openqa.selenium.Keys as Keys

WebUI.openBrowser('')

WebUI.navigateToUrl('https://www.google.com/?gws_rd=ssl')

WebUI.click(findTestObject('Object Repository/Page_Google/input_Eliminar_btnI'))

WebUI.setText(findTestObject('Object Repository/Page_Doodles de Google/input_Acerca de_q'), 'amor')

WebUI.click(findTestObject('Object Repository/Page_Doodles de Google/img'))

WebUI.click(findTestObject('Object Repository/Page_Da de la Madre 2020 (31 de mayo)/h2_Da de la Madre 2020 (31 de mayo)'))

WebUI.click(findTestObject('Object Repository/Page_Da de la Madre 2020 (31 de mayo)/div_Acerca de_hplogo'))

WebUI.click(findTestObject('Object Repository/Page_Da de la Madre 2020 (31 de mayo)/a_Acerca de_doodle-newer'))

WebUI.closeBrowser()

