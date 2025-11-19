using Ink.Runtime;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class DialogueController : MonoBehaviour
{
    [SerializeField] public TextAsset inkAsset;
    [SerializeField] private GameObject dialogueBox;

    [Header("Character Images")]
    [SerializeField] private Image knightImmage;
    [SerializeField] private Image mageImage;
    [SerializeField] private Image playerImage;

    [Header("UI")]
    [SerializeField] private TextMeshProUGUI displayText;
    [SerializeField] private TextMeshProUGUI[] choiceText;

    [SerializeField] private PlayerController playerController;

    private Story inkStory;

    void Start()
    {
        SetUI(false);
        playerController = FindObjectOfType<PlayerController>();
    }

    public void StartDialogue()
    {
        inkStory = new Story(inkAsset.text);
        SetUI(true);
        TryContinueDialogue();
        playerController.canMove = false;
    }

    public void ChooseChoise(int choiceIndex)
    {
        if (inkStory.currentChoices.Count > 0)
        {
            inkStory.ChooseChoiceIndex(choiceIndex);

            for (int i = 0; i < choiceText.Length; i++)
                choiceText[i].gameObject.SetActive(false);

            TryContinueDialogue();
        }
    }

    void TryContinueDialogue()
    {
        if (inkStory.canContinue)
        {
            displayText.text = inkStory.Continue();

            
            if (inkStory.currentTags.Count > 0)
            {
                foreach (string currentTag in inkStory.currentTags)
                {
                    if (currentTag == "Fluppington")
                        HighlightSpeaker(knightImmage);

                    else if (currentTag == "Knatterbold")
                        HighlightSpeaker(mageImage);

                    else if (currentTag == "Player")
                        HighlightSpeaker(playerImage);
                }
            }
        }

        
        if (inkStory.currentChoices.Count > 0)
        {
            for (int i = 0; i < inkStory.currentChoices.Count; i++)
            {
                Choice currentChoice = inkStory.currentChoices[i];
                choiceText[i].text = currentChoice.text;
                choiceText[i].gameObject.SetActive(true);
            }
        }
        else if (!inkStory.canContinue)
        {
            SetUI(false);
            playerController.canMove = true;
        }
    }

    
    private void HighlightSpeaker(Image activeImage)
    {
        Color activeColor = new Color(1f, 1f, 1f, 1f);
        Color fadedColor = new Color(1f, 1f, 1f, 0.3f);
        
        knightImmage.color = fadedColor;
        mageImage.color = fadedColor;
        playerImage.color = fadedColor;
        
        activeImage.color = activeColor;
    }

    public void SetUI(bool state)
    {
        for (int i = 0; i < choiceText.Length; i++)
            choiceText[i].gameObject.SetActive(state);

        dialogueBox.SetActive(state);
        displayText.gameObject.SetActive(state);
    }
}
